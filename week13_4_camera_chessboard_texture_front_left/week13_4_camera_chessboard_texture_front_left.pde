//week13-4-camera-chessboard-texture-front-left
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
}
void draw(){
  camera(mouseX,200,mouseY,mouseX,200,mouseY-110,0,1,0);//攝影機【往前方看】左右前後移動
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
