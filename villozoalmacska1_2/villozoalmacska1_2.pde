PImage alma;
color hatter;

float x;
float y;
void setup () {

size(500, 500);

alma=loadImage("apple.png");
imageMode(CENTER);
x=40;
y=30;
}


void draw() {
  hatter=color(mouseX, mouseY, (mouseX-mouseY)/2);
  
  background(hatter);
image(alma, x, y, x, y);
x=x+10;
}