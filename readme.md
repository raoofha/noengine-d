# noegnine: DbetterC compiler wrapper for graphic programming
dmd or ldc2 must be on your path
```
git clone https://github.com/raoofha/noengine
ln -s $PWD/noengine/src/noengine ~/.local/bin/noengine
```

# examples
```D
//triangle.d
float[] vertexData = [ -0.5, -0.5, 0.5, -0.5, 0, sqrt(3.0)/2 - 0.5 ];
float[3 * 4] colorData = 1;

extern (C) void main() {
  hiddenState.vertexData = vertexData;
  hiddenState.colorData = colorData;
  hiddenState.draw();
}
```
```
noengine      triangle.d -oftriangle
noengine ldc2 triangle.d -oftriangle
noengine  dmd triangle.d -oftriangle
```
