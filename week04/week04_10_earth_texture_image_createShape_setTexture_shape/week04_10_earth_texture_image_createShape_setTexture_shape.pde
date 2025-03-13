//week04-10-earth-texture-image-createShape-setTexture-shape
//google:earth map texture

size(400,400,P3D);
PShape earth = createShape(SPHERE, 100);
PImage img = loadImage("earth.jpg");
earth. setTexture(img);
shape(earth);
