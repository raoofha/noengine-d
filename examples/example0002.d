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
fi
exit 1
*/

extern (C) void main() {
  if (firstCall) {
    pentagon.init_();
    firstCall = false;
  }
  float speed = 10;
  pentagon.position.y += io.w ? -speed : 0;
  pentagon.position.y += io.s ?  speed : 0;
  pentagon.position.x += io.a ? -speed : 0;
  pentagon.position.x += io.d ?  speed : 0;
  if ( io.w || io.s || io.a || io.d ) pentagon.update();
  pentagon.draw();
}

Pentagon pentagon;
bool firstCall = true;

struct Pentagon {
  struct Children {
    Unit[6] units;
  }
  alias transform this;
  Transform!Children transform;

  void init_() {
    for(size_t i = 0 ; i < children.units.length ; i += 1) {
      children.units[i].init_();
      children.units[i].setOriginBottom;
      children.units[i].rotation.z = 2 * PI * i / children.units.length;
      children.units[i].parent = &this;
    }
    this.update();
  }
}
