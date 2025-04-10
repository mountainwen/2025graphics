//week08-1-loadShape-shape
size(400,400,P3D);//一定要有P3D的OpenGL 3D功能
PShape gundam = loadShape("Gundam.obj");//(1)毒入3D模型
translate(width/2, height/2);//放畫面中心
pushMatrix();//備分
  translate(0,100);//(5)再往下移一點點比較好看
  scale(10,-10,10);//(4)把模型放大 shape(10),上下要再倒過來
  shape(gundam,0,0);//(2)劃出3D模型
popMatrix();//還原
