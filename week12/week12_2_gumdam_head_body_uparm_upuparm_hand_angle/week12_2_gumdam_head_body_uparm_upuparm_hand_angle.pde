//week12-2-gumdam-head-body-uparm-upuparm-hand-angle
PShape body,head;
PShape uparm1,upuparm1,hand1;
void setup(){
  size(400,400,P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
}
float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 0;
void mouseDragged(){
  angleX[ID] += radians(mouseX - pmouseX);
  angleY[ID] += radians(mouseY - pmouseY);
}
void draw(){
  background(204);
  translate(200,300);
  sphere(10);//原點的球

  scale(10,-10,10);//y要上下再反過來
  shape(body,0,0);
  pushMatrix();
    translate(0,22.5);
    rotateY(angleX[0]);
    rotateX(angleY[0]);
    translate(0,-22.5);
    shape(head,0,0);
   popMatrix();
    pushMatrix();
   shape(upuparm1,0,0);//上上手臂
  pushMatrix();
    translate(-4.1,19.9);
   // rotateZ(radians(mouseX));
   rotateZ(angleY[2]);
   rotateY(angleX[2]);
    translate(4.1,-19.9);
    //translate(mouseX/10.0,-mouseY/10.0);//一邊移動,一邊找到數值
    //println(mouseX/10.0,-mouseY/10.0);//印出適合的數值,(小黑)
    shape(uparm1,0,0);//上手臂
    pushMatrix();
      translate(-4.5,16.9);
      //rotateX(radians(mouseY));
      rotateX(angleY[3]);
      rotateY(angleX[3]);
      translate(4.5,-16.9);
      //translate(mouseX/10.0,-mouseY/10.0);//一邊移動,一邊找到數值
      //println(mouseX/10.0,-mouseY/10.0);//印出適合的數值,(小黑)
      shape(hand1,0,0);//上手臂
    popMatrix();
popMatrix();
popMatrix();
}
