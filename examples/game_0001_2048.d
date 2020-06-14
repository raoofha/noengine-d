/*
if [ "$1" == "xterm-send" ]; then xterm-send bash $0 $2 ; exit 1 ; fi
echo -ne "\033c"

sdir=`dirname $0`
odir=${sdir}/../bin
ofilename=`basename $0 .${0##*.}`
ofilepath=${odir}/${ofilename}

mkdir -p $odir
cd $odir

build="noengine ldc2 $0 -of$ofilepath"
build="noengine  dmd $0 -of$ofilepath"

cmd=$1
echo $cmd...
if [ "$cmd" == "build" ]; then
time $build &&
$ofilepath ; echo $?
elif [ "$cmd" == "debug_build" ]; then
time $build -g &&
gdb -ex r -ex="bt" -ex="set confirm off" -ex=quit $ofilepath
elif [ "$cmd" == "build_win" ]; then
time $build_win &&
wine $ofilepath.exe ; echo $?
fi
exit 1
*/

import core.stdc.stdio;
import core.stdc.stdlib;

import noengine_core;

G2048 g2048;

extern (C) int init_() {
  g2048.run(MS.before, g2048.s);
  return 0;
}

extern (C) void main() {
  g2048.run(MS.emit, g2048.s);
  g2048.draw();
}

struct G2048 {
  enum S { init_, newGame, waitForInput, doubl, addTile, left, right, up, down, win, gameOver }
  struct Children {
    Rect background;
    Rect board_bg;
    Rect[tilesW][tilesH] board_tiles_bg;
    Tile[tilesW][tilesH] tiles;
    GameOver gameover;
  }
  alias transform this;
  Transform!Children transform;
  enum tilesW = 4;
  enum tilesH = tilesW;
  bool up, down, left, right;
  ListFixed!(size_t[2], tilesW * tilesH) empties;
  int w = 145 * 4 / tilesW;
  int gap = 25;
  Tile* newTile1;
  Tile* newTile2;

  void run(MS ms, size_t s) {
    //printf("run %d %d\n", s, ms);
    switch(s) {
      case S.init_: 
        final switch(ms) {
          case MS.emit: return emit(this, S.newGame);
          case MS.before: 
            io.camera.viewSize = Vector(720, 1280);
            io.camera.update();
            io.windowSize = Vector(360, 640);
            io.windowTitle = "2048";
            break;
          case MS.now: break;
          case MS.after:
            children.background.init_(720, 1280, Color(250, 248, 239));
            children.background.position = Vector(io.camera.viewSize.x, io.camera.viewSize.y) / 2;
            children.background.parent = &this;
            children.board_bg.init_(700, 700, Color(187, 173, 160));
            children.board_bg.position = Vector(io.camera.viewSize.x, io.camera.viewSize.y) / 2;
            children.board_bg.parent = &this;
            children.gameover.init_(720, 1280, Color.gray2, 64, Color.red);
            children.gameover.position = Vector(io.camera.viewSize.x, io.camera.viewSize.y) / 2;
            children.gameover.parent = &this;
            for(int i = 0 ; i < tilesW ; i += 1) {
              for(int j = 0 ; j < tilesH ; j += 1) {
                children.board_tiles_bg[i][j].init_(w, w, Color(207, 193, 178));
                children.board_tiles_bg[i][j].position = Vector( (i - cast(int) tilesW / 2 + 0.5) * (w + gap) 
                                                               , (j - cast(int) tilesH / 2 + 0.5) * (w + gap)
                                                               ) + io.camera.viewSize / 2;
                children.board_tiles_bg[i][j].parent = &this;
                children.tiles[i][j].init_(w, w, Color.white, 2, 64 , Color.black);
                children.tiles[i][j].i = i;
                children.tiles[i][j].j = j;
                children.tiles[i][j].reset();
                children.tiles[i][j].parent = &this;
              }
            }
            this.position = -io.camera.viewSize / 2;
            this.update();
            break;
        }
        break;
      case S.newGame:
        final switch(ms) {
          case MS.emit:
            if ( newTile1 ) {
              if (newTile1.s == Tile.S.end ) {
                return emit(this, S.waitForInput);
              }
            }
            break;
          case MS.before:
            children.gameover.hidden = true;
            for(int i = 0 ; i < tilesW ; i += 1) {
              for(int j = 0 ; j < tilesH ; j += 1) {
                children.tiles[i][j].reset();
              }
            }
            newTile1 = get_random_tile();
            newTile1.hidden = false;
            newTile2 = get_random_tile();
            newTile1.before_appear();
            newTile2.before_appear();
            break;
          case MS.now:
            newTile2.appear();
            //goto case;
            newTile1.appear();
            break;
          case MS.after:
            break;
        }
        break;
      case S.addTile:
        final switch(ms) {
          case MS.emit:
            if ( newTile1 ) {
              if (newTile1.s == Tile.S.end ) {
                return emit(this, S.waitForInput);
              }
            } else {
              return emit(this, S.gameOver);
            }
            break;
          case MS.before:
            newTile1 = get_random_tile();
            if ( newTile1 ) {
              newTile1.before_appear();
            }
            break;
          case MS.now:
            newTile1.appear();
            break;
          case MS.after:
            break;
        }
        break;
      case S.left:
        final switch(ms) {
          case MS.emit: return emitDouble();
          case MS.before:
            for(int i = 1 ; i < tilesW ; i += 1) {
              for(int j = 0 ; j < tilesH ; j += 1) {
                if ( !children.tiles[i][j].hidden ) {
                  int k = i - 1;
                  while (k > 0 && children.tiles[k][j].hidden) k--;
                  if (children.tiles[k][j].hidden) {
                    children.tiles[k][j].move_to(i, j, k, j);
                    children.tiles[i][j].reset();
                  } else if (children.tiles[k][j].v == children.tiles[i][j].v && !children.tiles[k][j].doubled) {
                    children.tiles[k][j].move_to(i, j, k, j);
                    children.tiles[k][j].doubled = true;
                    children.tiles[i][j].reset();
                  } else if (k + 1 != i) {
                    children.tiles[k + 1][j].move_to(i, j, k + 1, j);
                    children.tiles[i][j].reset();
                  }
                }
              }
            }
            break;
          case MS.now:
            runTiles();
            break;
          case MS.after:
            break;
        }
        break;
      case S.right:
        final switch(ms) {
          case MS.emit: return emitDouble();
          case MS.before:
            for(int i = tilesW - 2 ; i >= 0 ; i -= 1) {
              for(int j = 0 ; j < tilesH ; j += 1) {
                if ( !children.tiles[i][j].hidden ) {
                  int k = i + 1;
                  while (k < tilesW - 1 && children.tiles[k][j].hidden) k++;
                  if (children.tiles[k][j].hidden) {
                    children.tiles[k][j].move_to(i, j, k, j);
                    children.tiles[i][j].reset();
                  } else if (children.tiles[k][j].v == children.tiles[i][j].v && !children.tiles[k][j].doubled) {
                    children.tiles[k][j].move_to(i, j, k, j);
                    children.tiles[k][j].doubled = true;
                    children.tiles[i][j].reset();
                  } else if (k - 1 != i) {
                    children.tiles[k - 1][j].move_to(i, j, k - 1, j);
                    children.tiles[i][j].reset();
                  }
                }
              }
            }
            break;
          case MS.now:
            runTiles();
            break;
          case MS.after:
            break;
        }
        break;
      case S.up:
        final switch(ms) {
          case MS.emit: return emitDouble();
          case MS.before:
            for(int j = 1 ; j < tilesH ; j += 1) {
              for(int i = 0 ; i < tilesW ; i += 1) {
                if ( !children.tiles[i][j].hidden ) {
                  int k = j - 1;
                  while (k > 0 && children.tiles[i][k].hidden) k--;
                  if (children.tiles[i][k].hidden) {
                    children.tiles[i][k].move_to(i, j, i, k);
                    children.tiles[i][j].reset();
                  } else if (children.tiles[i][k].v == children.tiles[i][j].v && !children.tiles[i][k].doubled) {
                    children.tiles[i][k].move_to(i, j, i, k);
                    children.tiles[i][k].doubled = true;
                    children.tiles[i][j].reset();
                  } else if (k + 1 != j) {
                    children.tiles[i][k + 1].move_to(i, j, i, k + 1);
                    children.tiles[i][j].reset();
                  }
                }
              }
            }
            break;
          case MS.now:
            runTiles();
            break;
          case MS.after:
            break;
        }
        break;
      case S.down:
        final switch(ms) {
          case MS.emit: return emitDouble();
          case MS.before:
            for(int j = tilesH - 2 ; j >= 0 ; j -= 1) {
              for(int i = 0 ; i < tilesW ; i += 1) {
                if ( !children.tiles[i][j].hidden ) {
                  int k = j + 1;
                  while (k < tilesH - 1 && children.tiles[i][k].hidden) k++;
                  if (children.tiles[i][k].hidden) {
                    children.tiles[i][k].move_to(i, j, i, k);
                    children.tiles[i][j].reset();
                  } else if (children.tiles[i][k].v == children.tiles[i][j].v && !children.tiles[i][k].doubled) {
                    children.tiles[i][k].move_to(i, j, i, k);
                    children.tiles[i][k].doubled = true;
                    children.tiles[i][j].reset();
                  } else if (k - 1 != j) {
                    children.tiles[i][k - 1].move_to(i, j, i, k - 1);
                    children.tiles[i][j].reset();
                  }
                }
              }
            }
            break;
          case MS.now:
            runTiles();
            break;
          case MS.after:
            break;
        }
        break;
      case S.doubl:
        final switch(ms) {
          case MS.emit: return emitDouble();
          case MS.before:
            for(int i = 0 ; i < tilesW ; i += 1) {
              for(int j = 0 ; j < tilesH ; j += 1) {
                if ( children.tiles[i][j].doubled ) {
                  children.tiles[i][j].set_v( children.tiles[i][j].v * 2);
                  children.tiles[i][j].doubled = false;
                  children.tiles[i][j].double_state = 1;
                }
              }
            }
            break;
          case MS.now:
            for(int i = 0 ; i < tilesW ; i += 1) {
              for(int j = 0 ; j < tilesH ; j += 1) {
                if ( !children.tiles[i][j].hidden ) {
                  children.tiles[i][j].doubl();
                }
              }
            }
            break;
          case MS.after:
            break;
        }
        break;
      case S.waitForInput:
        final switch(ms) {
          case MS.emit:
            if ( s != S.up && (io.w || io.up ) ) {
              //printf("emit up\n");
              return emit(this, S.up);
            } else if ( s != S.down && ( io.s || io.down ) ) {
              return emit(this, S.down);
            } else if ( s != S.left && ( io.a || io.left ) ) {
              return emit(this, S.left);
            } else if ( s != S.right && ( io.d || io.right ) ) {
              return emit(this, S.right);
            } else {
              return emit(this, s);
            }
            break;
          case MS.before:
            break;
          case MS.now:
            break;
          case MS.after:
            break;
        }
        break;
      case S.win:
        final switch(ms) {
          case MS.emit:
            break;
          case MS.before:
            break;
          case MS.now:
            break;
          case MS.after:
            break;
        }
        break;
      case S.gameOver:
        final switch(ms) {
          case MS.emit:
            if ((io.w || io.up)
             || (io.s || io.down)
             || (io.a || io.left)
             || (io.d || io.right) ) {
              return emit(this, S.newGame);
            }
            break;
          case MS.before:
            children.gameover.hidden = false;
            break;
          case MS.now:
            break;
          case MS.after:
            break;
        }
        break;
      default:
        break;
    }
    if (ms == MS.emit) emit(this, s);
  }

  void runTiles() {
    for(int i = 0 ; i < tilesW ; i += 1) {
      for(int j = 0 ; j < tilesH ; j += 1) {
        if ( !children.tiles[i][j].hidden ) {
          children.tiles[i][j].animate();
        }
      }
    }
  }

  void emitDouble() {
    if ( animation_is_not_drawning ) {
    //printf("emitDouble\n");
      if ( any_double ) {
        return emit(this, S.doubl);
      } else if ( get_random_tile() ) {
        return emit(this, S.addTile);
      } else {
        return emit(this, S.gameOver);
      }
    } else {
        return emit(this, s);
    }
  }

  Tile* get_random_tile() {
    empties.length = 0;
    for(int i = 0 ; i < tilesW ; i += 1) {
      for(int j = 0 ; j < tilesH ; j += 1) {
        if ( children.tiles[i][j].hidden ) {
          empties.add([i,j]);
        } else {
          children.tiles[i][j].doubled = false;
        }
      }
    }
    auto empty = empties.get_random();
    if ( empty ) {
      return &children.tiles[(*empty)[0]][(*empty)[1]];
    } else {
      return null;
    }
  }

  bool animation_is_not_drawning() {
    bool noanim = true;
    for(int i = 0 ; i < tilesW ; i += 1) {
      for(int j = 0 ; j < tilesH ; j += 1) {
        if ( !children.tiles[i][j].hidden ) {
          if ( children.tiles[i][j].s != Tile.S.end ) {
            noanim = false;
            break;
          }
        }
      }
    }
    return noanim;
  }

  bool any_double() {
    bool any = false;
    for(int i = 0 ; i < tilesW ; i += 1) {
      for(int j = 0 ; j < tilesH ; j += 1) {
        if ( children.tiles[i][j].doubled ) {
          any = true;
          break;
        }
      }
    }
    return any;
  }
}

struct Tile {
  struct Children {
    Rect bg;
    Text!4 text;
  }
  alias transform this;
  Transform!Children transform;
  enum S { rloop, start, rplay, stop, play, end, loop, };
  bool doubled;
  int v, i, j;
  Vector p2;
  Vector dp;
  float a = 0.5;
  Color[11] colors = [ Color(238, 238, 218)
                     , Color(237, 224, 200)
                     , Color(242, 177, 121)
                     , Color(245, 149, 99)
                     , Color(246, 124, 95)
                     , Color(246, 94, 59)
                     , Color(237, 207, 114)
                     , Color(237, 204, 97)
                     , Color(237, 200, 80)
                     , Color(237, 197, 63)
                     , Color(237, 194, 46)
                     ];
  void*[2] _children;
  void init_(float w, float h, Color color, int text_string, int font_size, Color scolor) {
    hidden = true;
    v = text_string;
    children.text.init_(text_string, font_size, scolor);
    children.text.parent = &this;
    children.bg.init_(w, h, color);
    children.bg.parent = &this;
    transform.s = S.play;
    this.update();
  }

  void animate() {
    if ( dp.x > 0 ) {
      if ( transform.position.x + a * dp.x * dt < p2.x ) {
        transform.position.x += a * dp.x * dt;
        transform.s = Tile.S.play;
      } else {
        transform.position = p2;
        transform.s = Tile.S.end;
      }
    } else if ( dp.x < 0 ) {
      if ( transform.position.x + a * dp.x * dt > p2.x ) {
        transform.position.x += a * dp.x * dt;
        transform.s = Tile.S.play;
      } else {
        transform.position = p2;
        transform.s = Tile.S.end;
      }
    }

    if ( dp.y > 0 ) {
      if ( transform.position.y + a * dp.y * dt < p2.y ) {
        transform.position.y += a * dp.y * dt;
        transform.s = Tile.S.play;
      } else {
        transform.position = p2;
        transform.s = Tile.S.end;
      }
    } else if ( dp.y < 0 ) {
      if ( transform.position.y + a * dp.y * dt > p2.y ) {
        transform.position.y += a * dp.y * dt;
        transform.s = Tile.S.play;
      } else {
        transform.position = p2;
        transform.s = Tile.S.end;
      }
    }

    //if ( ((dp.x > 0) && (transform.position.x + a * dp.x * dt < p2.x) ) || ((dp.x < 0) && (transform.position.x + a * dp.x * dt > p2.x) )) {
    //  transform.position.x += a * dp.x * dt;
    //  transform.s = Tile.S.play;
    //} else {
    //  transform.position = p2;
    //  transform.s = Tile.S.end;
    //}

    //if ( ((dp.y > 0) && (transform.position.y + a * dp.y * dt < p2.y) ) || ((dp.y < 0) && (transform.position.y + a * dp.y * dt > p2.y) )) {
    //  transform.position.y += a * dp.y * dt;
    //  transform.s = Tile.S.play;
    //} else {
    //  transform.position = p2;
    //  transform.s = Tile.S.end;
    //}

    this.update();
  }

  void appear() {
    if ( transform.scale.x + dt * a * 0.01 < 1 ) {
      transform.scale = Vector( transform.scale.x + dt * a * 0.01
                         , transform.scale.y + dt * a * 0.01
                         );
      transform.s = Tile.S.play;
    } else {
      transform.scale = Vector( 1 , 1);
      transform.s = Tile.S.end;
    }
      this.update();
  }

  int double_state = 0;
  void doubl() {
    switch(double_state) {
      case 1:
        if ( transform.scale.x + dt * a * 0.01 < 1.5 ) {
          transform.scale = Vector( transform.scale.x + dt * a * 0.01
                             , transform.scale.y + dt * a * 0.01
                             );
          transform.s = Tile.S.play;
        } else {
          double_state = 2;
        }
        break;
      case 2:
        if ( transform.scale.x - dt * a * 0.01 > 1 ) {
          transform.scale = Vector( transform.scale.x - dt * a * 0.01
                             , transform.scale.y - dt * a * 0.01
                             );
          transform.s = Tile.S.play;
        } else {
          double_state = 0;
          transform.scale = Vector(1, 1);
          transform.s = Tile.S.end;
        }
        break;
      default:
        break;
    }
          this.update();
  }

  void move_to(int x1, int y1, int x2, int y2) {
    transform.position = Vector( (x1 - cast(int) .g2048.tilesW / 2 + 0.5) * (.g2048.w + .g2048.gap)
                               , (y1 - cast(int) .g2048.tilesH / 2 + 0.5) * (.g2048.w + .g2048.gap)
                               ) + io.camera.viewSize / 2;
    p2 =  Vector( (x2 - cast(int) .g2048.tilesW / 2 + 0.5) * (.g2048.w + .g2048.gap)
                , (y2 - cast(int) .g2048.tilesH / 2 + 0.5) * (.g2048.w + .g2048.gap)
                ) + io.camera.viewSize / 2;
    dp = Vector(x2 - x1, y2 - y1);
    set_v(.g2048.children.tiles[x1][y1].v);
    this.update();
    hidden = false;
  }

  void set_v(int v) {
    this.v = v;
    children.text.init_(v, v < 65 ? 64 : 48, v < 5 ? Color.black : Color.white);
    children.bg.setColor(colors[cast(uint) (log2(v) - 1)]);
  }

  void reset() {
    doubled = false;
    v = 2;
    children.bg.setColor(colors[0]);
    move_to(i, j, i, j);
    transform.hidden = true;
    transform.s = Tile.S.start;
  }

  void before_appear() {
    transform.hidden = false;
    transform.scale = Vector(0.5,0.5);
  }
}

struct GameOver {
  struct Children {
    Text!100 text1;
    Text!100 text2;
    Rect bg;
  }
  alias transform this;
  Transform!Children transform;
  void init_(float w, float h, Color color, int font_size, Color scolor) {
    //hidden = true;
    children.text1.init_("Game Over", font_size, scolor);
    children.text1.parent = &this;
    children.text2.init_("press WSAD to continue", font_size / 2, scolor);
    children.text2.parent = &this;
    children.bg.init_(w, h, color);
    children.bg.parent = &this;
    children.text1.position = Vector(children.bg.size.x / 2, children.bg.size.y / 2);
    children.text2.position = Vector(children.bg.size.x / 2, children.bg.size.y / 2 + children.text1.size.y + 10);
    children.bg.setOriginTopLeft;
    origin = Vector(children.bg.size.x / 2, children.bg.size.y / 2);
    this.update();
  }
}

struct ListFixed(T, int size) {
  int length = 0;
  T[size] data;

  T* add(T it) {
    if ( length < size ) {
      data[length++] = it;
    }
    return null;
  }

  T* get(uint i) {
    if ( i < length ) {
      return &data[i];
    }
    return null;
  }

  T* get_random() {
    if ( length < 1 ) {
      return null;
    }
    int rndm = cast(int) (length * (rand() / (RAND_MAX + 1.0)));
    return &data[rndm];
  }
}
