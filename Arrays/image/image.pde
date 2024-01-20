void setup() {
  size(480, 360);
  PImage img = loadImage("assets/donut.jpg");
  image(img, 0, 0);
  int halfImage = img.width * img.height/2;
  loadPixels();
  for (int i = 0; i < halfImage; i++) {
    color col = color(random(255), random(255), random(255));
    int ran = int(random(halfImage));
    pixels[i+ran] = col;
  }
  updatePixels();
}



void draw(){
  
  
  
  
}
