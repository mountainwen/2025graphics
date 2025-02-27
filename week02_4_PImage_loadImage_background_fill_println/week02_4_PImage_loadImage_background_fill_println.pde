//week02-4-PImage-loadImage-background-fill-println
//描圖
PImage img;
void setup(){
  size(400,400);
  img = loadImage("111.png");
}//remember move image in
void draw(){
  background(img);
  fill(255,mouseX);//rgba.alpha透明度=128
  println(mouseX);//把 mouseX值,在下面<小黑>印出來
  rect(0,0,400,400);//draw a big 四邊形 to cover all
}
