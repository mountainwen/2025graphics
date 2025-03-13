//week04-03-rotateX-radians-mouseY
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  //rotateY(radians(mouseX));//turn left or right
  rotateX(radians(-mouseY));//turn up or down
  box(200);
}
