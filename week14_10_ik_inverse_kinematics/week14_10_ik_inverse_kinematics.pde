//week14-10-ik-inverse-kinematics

//最簡單的線段,來解真的ID運算
void setup(){
  size(400,400);
  for(int i=0;i<N;i++){
    p[i] = new PVector(200, 350-L*i);//頂點位置
  }
}
int N = 20,L=300/N;//本來是6點,距離50
PVector [] p = new PVector[N];//6個頂點
void draw(){
  background(255);
  for(int i=0; i<N; i++){//畫點和加字
    if(i>0)line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);
    ellipse(p[i].x, p[i].y,8,8);
    fill(0);
    text("p:"+i, p[i].x+10,p[i].y);//字往右
  }
  
  p[N-1].x = mouseX;
  p[N-1].y = mouseY;
  for(int i=N-2;i>0;i--){
    PVector v = PVector.sub(p[i+1],p[i]).normalize().mult(L);//短向量
    //因為長度限制為L,所以長向量先變為1在乘L
    p[i].x = p[i+1].x - v.x;//新位置,是中心,在加50
    p[i].y = p[i+1].y - v.y;//新位置,是中心,在加50
    
  }
 
  for(int i=1; i<N;i++){
    PVector v = PVector.sub(p[i],p[i-1]).normalize().mult(L);
    p[i].x = p[i-1].x + v.x;//新位置,是中心,在加50
    p[i].y = p[i-1].y + v.y;//新位置,是中心,在加50
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠的點
  //line(p[4].x, p[4].y,mouseX,mouseY);
}
