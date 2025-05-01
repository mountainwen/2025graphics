//week11-3-postman-again
PImage postman,head,body,uparm1,hand1,uparm2,hand2,foot1,foot2;
void setup(){
  size(560,560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("right-arm.png");
  uparm2 = loadImage("left-arm.png");
  hand1 = loadImage("right-hand.png");
  hand2 = loadImage("left-hand.png");
  foot1 = loadImage("right-leg.png");
  foot2 = loadImage("left-leg.png");
}
float[] angleX = new float[10];//在3d世界裡我們的旋轉
float[] angleY = new float[10];
int ID = 0;//頭關節
ArrayList<String> lines = new ArrayList<String>();
void keyPressed(){
  if(key=='s'){
    String now = "";
    for(int i=0; i<10; i++){
      now += angleX[i] + " ";  
      now += angleY[i] + " "; 
    }
    lines.add(now);
  }
  if(key=='1') ID = 1;//leftarm
  if(key=='2') ID = 2;//lefthand
  if(key=='3') ID = 3;//rightarm
  if(key=='4') ID = 4;//righthand
  if(key=='5') ID = 5;
  if(key=='6') ID = 6;
  if(key=='0') ID = 0;//head
}
void mouseDragged(){
  angleX[ID] += mouseX-pmouseX;
  angleY[ID] += mouseY-pmouseY;
}
void draw(){
  background(#FFFFF2);
  image(body,0,0);//先畫身體
  pushMatrix();
    translate(+233,+230);//放回正確位置
    rotate(radians(angleX[0]));
    translate(-233,-230);//頭的旋轉中心放到(0,0)
    image(head,0,0);//在畫頭
  popMatrix();
  pushMatrix();
    translate(220,375);
    rotate(radians(angleX[5]));
    translate(-220,-375);
    image(foot1,0,0);
  popMatrix();
  pushMatrix();
    translate(260,372);
    rotate(radians(angleX[6]));
    translate(-260,-372);
    image(foot2,0,0);
  popMatrix();
  pushMatrix();
    translate(+197,+262);//放回正確位置
    rotate(radians(angleX[1]));
    translate(-197,-262);//arm的旋轉中心放到(0,0)
    image(uparm1,0,0);
    pushMatrix();
      translate(+119,+265);//放回正確位置
      rotate(radians(angleX[2]));
      translate(-119,-265);//arm的旋轉中心放到(0,0)
      image(hand1,0,0);
    popMatrix();
  popMatrix();
   pushMatrix();
    translate(+289,+260);//放回正確位置
    rotate(radians(angleX[3]));
    translate(-289,-260);//arm的旋轉中心放到(0,0)
    image(uparm2,0,0);
    pushMatrix();
      translate(+355,+258);//放回正確位置
      rotate(radians(angleX[4]));
      translate(-355,-258);//arm的旋轉中心放到(0,0)
      image(hand2,0,0);
    popMatrix();
  popMatrix();
  
  
 }
