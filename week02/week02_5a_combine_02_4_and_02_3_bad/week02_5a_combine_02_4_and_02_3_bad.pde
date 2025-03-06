//week02-5a-combine-02-4-and-02-3-bad
PImage img;
void setup(){
  size(400,400);
  img = loadImage("333.png");//111.png 333.png
}//remember move image in
void draw(){
  background(img);
  fill(255,200);//rgba.alpha透明度=128
  
  rect(0,0,400,400);//draw a big 四邊形 to cover all
  stroke(255,0,0);//red line
  if(mousePressed)line(mouseX, mouseY, pmouseX, pmouseY);
}
