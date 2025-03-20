//wee05-4-translate-mouseX-mouseY-rotate-radians-frameCount
//比較rotate 與 translate 順序
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  //請做以下測試:把下面2行,掉一下順序
  //會發現:畫東西之前的 translate()才有效果
  //在電腦圖學理,畫圖時,會照著之前<累積移動,旋轉>來放東西
  translate(mouseX,mouseY);//move to mouse
  rotate(radians(frameCount));//1秒有60 frame轉60度 要變radians單位
  rect(-50,-5,100,10);//寬度100棒子,放左上角
}
