//week03-05-mouse-cat-x-y
void setup(){
  size(400,400);
}
float x,y;//cat location
void draw(){
  background(255);
  ellipse(x,y,40,40);
  ellipse(mouseX,mouseY,40,20);
  x = (x*4+mouseX)/5;
  y = (y*4+mouseY)/5;//計算兩者間的距離,斜率
}//新座標,就座標*14,目標*1
