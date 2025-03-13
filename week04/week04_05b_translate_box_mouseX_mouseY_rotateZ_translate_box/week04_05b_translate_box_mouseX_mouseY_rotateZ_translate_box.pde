//week04-05b-translate-box-mouseX-mouseY-rotateZ-translate-box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  //translate(width/2,height/2);//move to the center(畫面)
 
      translate(mouseX,mouseY);
      rotateZ(radians(frameCount));//對z軸旋轉
      translate(0,-50);//把下端移到中心
      box(10,100,10);//可轉動長條
    
  
}
