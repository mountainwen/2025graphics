//week04-05a-rotateZ-translate-box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);//move to the center(畫面)
 
      //以下兩行分別註解並排列組合,觀察
      rotateZ(radians(frameCount));//對z軸旋轉
      translate(0,-50);//把下端移到中心
      box(10,100,10);//可轉動長條
    
  
}
