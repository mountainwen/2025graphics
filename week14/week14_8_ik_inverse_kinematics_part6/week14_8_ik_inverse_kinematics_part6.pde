//week14-8-ik-inverse-kinematics-part6

//最簡單的線段,來解真的ID運算
void setup(){
  size(400,400);
  for(int i=0;i<6;i++){
    p[i] = new PVector(200, 350-50*i);//頂點位置
  }
}
PVector [] p = new PVector[6];//6個頂點
void draw(){
  background(255);
  for(int i=0; i<6; i++){//畫點和加字
    if(i>0)line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);
    ellipse(p[i].x, p[i].y,8,8);
    fill(0);
    text("p:"+i, p[i].x+10,p[i].y);//字往右
  }
  PVector now = new PVector(mouseX,mouseY);//現在位置
  for(int i=5;i>0;i--){
    PVector v = PVector.sub(now,p[i]).normalize().mult(50);//短向量
    //因為長度限制為50,所以長向量先變為1在乘50
    p[i].x = now.x - v.x;//新位置,是中心,在加50
    p[i].y = now.y - v.y;//新位置,是中心,在加50
    now = p[i];
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠的點
  //line(p[4].x, p[4].y,mouseX,mouseY);
}
