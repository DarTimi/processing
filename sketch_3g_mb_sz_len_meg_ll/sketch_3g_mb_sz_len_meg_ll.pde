class Labda {
  float x;
  float y ;
  float sugar;
  color szin;
  void rajzold_ki () {
    noStroke();
    fill (szin);
    ellipse(x, y, 2*sugar, 2*sugar);
  }
  void fel() {
    y=y-1;
  }
  void le() {
    y=y+1;
  }
  void balra() {
    x=x+1;
  }
  void jobbra() {
    x=x-1;
  }

  boolean bent_van() {
    if (x>0 && y<500 && x<500 && y>0 ) {
      return true;
    } else {
      return false;
    }
  }
}
Labda zold_labda=new Labda();
Labda sarga_labda= new Labda();
Labda kek_labda=new Labda();
void setup () {
  size (500, 500);

  zold_labda.x=250;
  zold_labda.y=250;
  zold_labda.sugar=100;
  zold_labda.szin=color (#609331);

  sarga_labda.x=50;
  sarga_labda.y=100;
  sarga_labda.sugar=50;
  sarga_labda.szin=color (#FFF41A);

  kek_labda.x=300;
  kek_labda.y=350;
  kek_labda.sugar=100;
  kek_labda.szin=color (#2342B7);
}

void draw() {
  background (#6C7289);



  zold_labda.rajzold_ki();
  sarga_labda.rajzold_ki();
  kek_labda.rajzold_ki();

  if (sarga_labda.bent_van()) {
    sarga_labda.balra();
  }
  if (zold_labda.bent_van()) {
    zold_labda.jobbra();
  }
  if (kek_labda.bent_van()) {
    kek_labda.le();
  }
}