//week13-5-camera-keyPressed-keyCod-x-y-z-angle-cos-sin
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
}
float x=200,y=200,z=200,angle=180;
void keyPressed(){
  if(keyCode == LEFT) angle--;
  if(keyCode == RIGHT) angle++;
  if(keyCode == UP) {
    x += cos(radians(angle));
    z += sin(radians(angle));
  }
  if(keyCode == DOWN) {
    x -= cos(radians(angle));
    z -= sin(radians(angle));
  }
}
void draw(){
  //camera(mouseX,200,mouseY,mouseX,200,mouseY-110,0,1,0);//攝影機【往前方看】左右前後移動
  if(keyPressed) keyPressed();
  camera(x,y,z,x+cos(radians(angle)),y,z+sin(radians(angle)),0,1,0);
  background(128);
  beginShape();//正前方z座標0
    texture(img);
    vertex(0,0,0,0,0);//x,y,z,u,v
    vertex(400,0,0,1,0);
    vertex(400,400,0,1,1);
    vertex(0,400,0,0,1);
  endShape();
  beginShape();//左方x座標0
    texture(img);
    vertex(0,0,0,0,0);//x,y,z,u,v
    vertex(0,400,0,1,0);
    vertex(0,400,400,1,1);
    vertex(0,0,400,0,1);
  endShape();
}
