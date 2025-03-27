//week06-4-sphere-box-push-T-R-T-box-pop
//慢慢組合出機器手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);//step00
  translate(width/2,height/2);//step00
  sphere(10);//step04 放個小球,當參考
  box(200,50,25);//手肘
  fill(252,131,77);
  pushMatrix();
    translate(x,y);
    if(mousePressed)rotateZ(radians(frameCount));//step03
    translate(25,0,0);//step02往右推,讓左端放中心
    box(50,25,50);//step01小手腕
   popMatrix();//step03
 }
 float x=0,y=0;
 void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
  println("x:" + x + "y:" + y);//step07 印出來 
 }
