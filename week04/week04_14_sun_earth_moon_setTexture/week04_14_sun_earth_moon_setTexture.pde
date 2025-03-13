//week04-14-sun-earth-moon-setTexture
PShape sun,earth,moon;
void setup(){
  size(400,400,P3D);
  sun = createShape(SPHERE, 50);
  PImage img = loadImage("sun.jpg");
  sun.setTexture(img);
  earth = createShape(SPHERE, 30);
  img = loadImage("earth.jpg");
  earth.setTexture(img);
  moon = createShape(SPHERE, 10);
  img = loadImage("moon.jpg");
  moon.setTexture(img);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  shape(sun);//sphere(50);//sun
  rotateY(radians(frameCount));
  pushMatrix();
    translate(150,0);
    rotateY(radians(frameCount));
    shape(earth);//sphere(30);//earth
    pushMatrix();
      translate(50,0);
      rotateY(radians(frameCount));
      shape(moon);//sphere(10);//moon
     popMatrix();
  popMatrix();
}
