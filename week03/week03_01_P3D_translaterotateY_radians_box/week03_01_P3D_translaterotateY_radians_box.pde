//week03-01-P3D-translaterotateY-radians-box
void setup(){
  size(400,400,P3D);//open 3D 模式
}
void draw(){
  background(128); //gray background
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));//對y旋轉
  box(200);//大小200的 box 盒子
}
