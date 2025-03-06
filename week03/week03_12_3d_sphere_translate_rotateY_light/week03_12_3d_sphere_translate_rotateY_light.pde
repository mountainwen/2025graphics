//week03-12-3d-sphere-translate-rotateY-light
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  lights();//打光
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));
  sphere(200);
}
