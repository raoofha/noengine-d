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
build="noengine      $0 -of$ofilepath"

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

float[] matrix = [
  1, 0, 0, 0,
  0, 1, 0, 0,
  0, 0, 1, 0,
  0, 0, 0, 1,
];

float[] vertexData = [
 -0.5,  0.5,
 -0.5, -0.5,
  0.5,  0.5,
  0.5, -0.5,
];

float[] colorData = [
  1, 0, 0, 1,
  0, 1, 0, 1,
  0, 0, 1, 1,
  1, 1, 1, 1,
];

extern (C) void main() {
  hiddenState.matrix = matrix;
  hiddenState.vertexData = vertexData;
  hiddenState.colorData = colorData;
  hiddenState.primitiveType = 5;
  hiddenState.draw();
}
