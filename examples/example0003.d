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

extern (C) int init_() {
  io.windowTitle = "example0003";
  return 0;
}

extern (C) void main() {
  float speed = 10;
  unit.position.y += io.w ? -speed : io.s ? speed : 0;
  unit.position.x += io.a ? -speed : io.d ? speed : 0;
  if ( io.w || io.s || io.a || io.d ) unit.update();
  unit.draw();
}
