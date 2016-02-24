PImage alma;
void setup () {

size(500, 500);

alma=loadImage("apple.png");
imageMode(CENTER);
}





void draw() {
  background(mouseX, 0, 250);
image(alma, mouseX, mouseY, 300, 300);
}