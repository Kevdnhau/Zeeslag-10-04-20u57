boolean readyPlayer1 = false;
Vakjes zee = new Vakjes();
SchipSpeler1 schepen1 = new SchipSpeler1();
SchipSpeler2 schepen2 = new SchipSpeler2();
public void setup() {
  size (1920, 1020);
  frameRate (60);
  background (70);
}

public void draw() {
  background(70);
  zee.initialize();
  boatPlacement();
}

private void boatPlacement () {
  schepen1.speler1Boten();
  if (keyPressed) {
    if (key == ' ') {
      readyPlayer1 = true;
    }
  }
  if (readyPlayer1 == true) {
    schepen2.speler2Boten ();
  }
}