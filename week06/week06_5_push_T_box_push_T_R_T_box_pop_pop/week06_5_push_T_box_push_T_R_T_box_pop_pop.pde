//week06-5-push-T-box-push-T-R-T-box-pop-pop
//慢慢組合出機器手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  fill(252,131,77);
  
  
  pushMatrix();//step04 new team
    translate(x,y);//step05 新的轉動
    //step03 把程式往右縮排
    box(200,50,25);//step05手肘
    
    pushMatrix();//step03 把程式往右縮排
      translate(100,0);//step01 把前一步發現的 100,0 放好
      //if(mousePressed)//把if(mousepressed)刪掉
      rotateZ(radians(frameCount));//step02只轉動
      translate(25,0,0);//往右推,讓左端放中心
      box(50,25,50);//小手腕
     popMatrix();//step03 把程式往右縮排
   popMatrix();//step04 new team
 }
 float x=0,y=0;
 void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
  println("x:" + x + "y:" + y);// 印出來 
 }
