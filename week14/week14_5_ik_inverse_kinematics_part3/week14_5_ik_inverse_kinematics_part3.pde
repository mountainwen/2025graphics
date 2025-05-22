//week14-5-ik-inverse-kinematics-part3
//最簡單的線段,來解真的ID運算
void setup(){
  size(400,400);
  for(int i=0;i<2;i++){
    p[i] = new PVector(200, 350-50*i);//頂點位置
  }
}
PVector [] p = new PVector[6];//6個頂點
void draw(){
  background(255);
  for(int i=0; i<2; i++){//畫點和加字
    if(i>0)line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);
    ellipse(p[i].x, p[i].y,8,8);
    fill(0);
    text("p:"+i, p[i].x+10,p[i].y);//字往右
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠的點
  line(p[0].x, p[0].y,mouseX,mouseY);
}
