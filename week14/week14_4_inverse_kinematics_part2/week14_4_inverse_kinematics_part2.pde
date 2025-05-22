//week14-4-inverse-kinematics-part2
void setup(){
  size(400,400);//先用2D
}
float [] angle = new float[5];
void draw(){
  background(255);
  translate(200, 350);
  ellipse(0,0,12,12);//(0,0)放圓
  
  pushMatrix();
    rotate(radians(angle[0]));//2D對Z軸轉
    rect(0,-5,50,10);//直棒
    pushMatrix();
      translate(50,0);//2d移動往右
      rotate(radians(angle[1]));
      rect(0,-5,50,10);
    popMatrix();
  popMatrix();
}
void mouseDragged(){
  angle [ID] += mouseX - pmouseX; 
}
int ID = 0;
void keyPressed(){
  if(key == '0') ID = 0;
  if(key == '1') ID = 1;
}
