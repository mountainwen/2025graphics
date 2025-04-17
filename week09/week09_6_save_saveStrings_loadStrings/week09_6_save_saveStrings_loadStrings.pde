//week09-6-save-saveStrings-loadStrings
void setup(){
  size(300,300);
  rect(10,10,80,80);
  rect(110,110,80,80);
  save("file.png");//this example can save a 畫面
  another =  loadStrings("lines.txt");//如果順利讀到,就有陣列
}
int x = 10,y = 10,ID=0;
void draw(){
  background(204);
  if(another != null){
    int[] now = int(split(another[ID],' '));
    rect(now[0],now[1],80,80);
    ID = (ID+1) % another.length;
  }
  rect(x,y,80,80);
}
void mouseDragged(){
  x += mouseX - pmouseX; 
  y += mouseY - pmouseY;
  String now = x + " " + y;//現在的座標字串
  lines.add(now);
  println(now);//印出來
}
ArrayList<String> lines = new ArrayList<String>();
String [] another;//另一個讀到字串的資料結構(一開始沒有東西)
void keyPressed(){
  String[] arr = new String[lines.size()];//java陣列結構
  lines.toArray(arr);//arraylist轉換成傳統陣列以便存檔
  if(key=='s') saveStrings("lines.txt",arr);//pressed s,save
}
