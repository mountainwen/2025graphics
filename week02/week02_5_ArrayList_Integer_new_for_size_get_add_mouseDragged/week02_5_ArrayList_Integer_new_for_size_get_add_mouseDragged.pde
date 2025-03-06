//week02-5-ArrayList<Integer> new for size get add_mouseDragged
//要利用資料結構,把歷史軌跡記起來
ArrayList<Integer> x = new ArrayList<Integer>();//新建資料結構
ArrayList<Integer> y = new ArrayList<Integer>();
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
  for(int i=1; i<x.size(); i++){//用迴圈,從資料結構取出來
    line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
