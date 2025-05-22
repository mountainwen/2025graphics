//week14-9-ik-inverse-kinematics-part7

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
  p[5].x = now.x;
  p[5].y = now.y;
  for(int i=4;i>0;i--){
    PVector v = PVector.sub(now,p[i]).normalize().mult(50);//短向量
    //因為長度限制為50,所以長向量先變為1在乘50
    p[i].x = p[i+1].x - v.x;//新位置,是中心,在加50
    p[i].y = p[i+1].y - v.y;//新位置,是中心,在加50
    
  }
  now = p[0];
  for(int i=1; i<5;i++){
    PVector v = PVector.sub(p[i],p[i-1]).normalize().mult(50);
    p[i].x = p[i-1].x + v.x;//新位置,是中心,在加50
    p[i].y = p[i-1].y + v.y;//新位置,是中心,在加50
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠的點
  //line(p[4].x, p[4].y,mouseX,mouseY);
}
