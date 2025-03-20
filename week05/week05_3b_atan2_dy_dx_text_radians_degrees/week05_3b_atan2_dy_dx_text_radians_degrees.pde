//week05-3b-atan2-dy-dx-text-radians-degrees
//degrees vs. radians 結合 week04-01 and week 05-2
void setup(){
  size(400,400);
}
void draw(){
  background(128);
  line(200,200,400,200);
  line(200,200,mouseX,mouseY);
  float dx = mouseX-200, dy = mouseY -200;
  float a = atan2(dy,dx);//神奇的三角函式 ,可找到 arc 弧的 radians
  //atan2()的值,介於 - pi ... +PI
  if(a<0) arc(200,200,200,200,a,0,PIE);
  else arc(200,200,200,200,0,a,PIE);
  textSize(30);
  text("radians:" +a,100,100);
  text("degrees:" + degrees(a),100,130);
}
