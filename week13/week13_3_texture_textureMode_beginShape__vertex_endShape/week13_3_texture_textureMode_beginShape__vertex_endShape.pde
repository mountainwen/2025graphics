//week13-3-texture-textureMode-beginShape- vertex-endShape
//先教貼圖再把<貼圖>加入
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
}
void draw(){
  background(128);
  beginShape();//begin to draw
    texture(img);
    vertex(40,80,0,0);//4頂點,裁出2三角形
    vertex(320,20,1,0);
    vertex(380,360,1,1);
    vertex(160,380,0,1);
  endShape();
}
