//week04-01-atan2-dy-dx-cos-sin
void setup(){
  size(600,300);
}
void draw(){
  background(#C0FFEE);//粉青咖啡色
  ellipse(150,150,100,100);//big eye
  ellipse(150+25,150,50,50);
  float dx = mouseX-150, dy = mouseY-150;
  float a = atan2(dy,dx);//atan=angle,算出角度
  ellipse(150+cos(a)*25,150+sin(a)*25,50,50);
  //ellipse(150+25,150,50,50);
}
