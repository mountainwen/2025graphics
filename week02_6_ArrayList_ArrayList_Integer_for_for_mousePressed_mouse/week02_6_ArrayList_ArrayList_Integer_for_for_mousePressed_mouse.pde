//week02-6-ArrayList-ArrayList-Integer-for-for-mousePressed-mouseDragged
//想要很多段,不要一筆畫一直畫
ArrayList<Integer> x, y;//先有2個還沒準備好的小資料結構
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("111.png");//111.png 333.png
}//remember move image in
void draw(){
  background(img);
  fill(255,200);//rgba.alpha透明度=128
  rect(0,0,400,400);//draw a big 四邊形 to cover all
  for(int I=0; I<xx.size(); I++){//大的資料結構
    ArrayList<Integer> x = xx.get(I);//取出裡面小的
    ArrayList<Integer> y = yy.get(I);
    for(int i=1; i<x.size(); i++){//用迴圈,從資料結構取出來
      line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
    }
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//按下滑鼠,建新的資料結構
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
