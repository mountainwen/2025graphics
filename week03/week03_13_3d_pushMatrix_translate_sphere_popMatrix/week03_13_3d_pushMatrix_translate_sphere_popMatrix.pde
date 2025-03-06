//week03-13-3d-pushMatrix-translate-sphere-popMatrix
void setup(){
  size(600,400,P3D);
}
void draw(){
  background(128);
  lights();//打光
  pushMatrix();//備份矩陣
    translate(300,100);//習慣上,要往右再縮
    sphere(100);
  popMatrix();//還原矩陣
  pushMatrix();
    translate(100,100);
    sphere(100);
  popMatrix();
}
