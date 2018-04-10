class Vakjes {  
  public void initialize () {
    grid();
    gridCoordBoxes();
    //tekst();
    makeTopUi ();
    rulesSection ();
    createText ();
  }

  private void grid() {
    int xCoordGrid1 = 540;
    int xCoordGrid2 = 1480;
    int yCoordGrid = 140;
    int sizeGridBox = 40;
    //Grid Creation Method
    //Looks Grid
    fill(128, 128, 255);
    stroke(0, 0, 255);
    strokeWeight(1);
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 10; j++) {
        rect(xCoordGrid1 + sizeGridBox * i, yCoordGrid + sizeGridBox * j, sizeGridBox, sizeGridBox);
        rect(xCoordGrid2 + sizeGridBox * i, yCoordGrid + sizeGridBox * j, sizeGridBox, sizeGridBox);
      }
    }
  }

  private void gridCoordBoxes ()
  {
    int sizeCoordBox = 40;
    //Coord Creation Boxes Method
    //Looks Boxes For Coords
    fill (125);
    stroke (255);

    for (int i=0; i<10; i++) {
      for (int j=0; j<10; j++) {
        rect(540 + sizeCoordBox * i, 100, sizeCoordBox, sizeCoordBox);
        rect(1480 + sizeCoordBox * i, 100, sizeCoordBox, sizeCoordBox);
        rect(500, 140 + sizeCoordBox * j, sizeCoordBox, sizeCoordBox);
        rect(1440, 140 + sizeCoordBox * j, sizeCoordBox, sizeCoordBox);
      }
    }
    //Coords Creation Data Method
    //Grid Coords Data
    String [] letter  = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"};
    int [] numbers  = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    //Looks Text
    fill (255);
    textSize(30);
    textAlign (CENTER, CENTER);

    for (int i=0; i<10; i++) {
      for (int j=0; j<10; j++) {
        text(letter [j], 520, 160 + sizeCoordBox * j); 
        text(letter [j], 1460, 160 + sizeCoordBox * j);
        text(numbers [i], 560 + sizeCoordBox * i, 120);
        text(numbers [i], 1500 + sizeCoordBox * i, 120);
      }
    }
  }

  //private void tekst() {
  //  textSize(32);
  //  fill(0, 255, 0);
  //  text("Zeeslag ingenieursproject groep: ", 520, 55);
  //  text("Selecteer jouw boten van links naar rechts en druk op 'P' om jouw boot definitief te plaatsen", 75, 950);
  //  text("Druk op 'H' om de boot horizontaal te draaien of druk op 'V' om de boot verticaal te draaien", 75, 575);
  //}


  private void makeTopUi () {
    int yCoord = 10;
    int widthBox = 215;
    int heightBox = 65;
    //Looks Box
    fill (255);
    stroke (0);
    //Player 1 Top UI
    rect(40, yCoord, widthBox, heightBox);
    rect(265, yCoord, widthBox, heightBox);
    rect(500, yCoord, widthBox, heightBox);
    rect(725, yCoord, widthBox, heightBox);
    //Player 2 Top UI
    rect(980, yCoord, widthBox, heightBox);
    rect(1205, yCoord, widthBox, heightBox);
    rect(1440, yCoord, widthBox, heightBox);
    rect(1665, yCoord, widthBox, heightBox);
  }

  private void createText () {
    int yCoordTopUi = 10;
    //text for the boxes
    textAlign (LEFT, TOP);
    textSize(55);
    fill (0);
    text("Player 1", 40, yCoordTopUi);
    text("Player 2", 980, yCoordTopUi);
    text("Hits:", 265, yCoordTopUi);
    text("Hits:", 1205, yCoordTopUi);
    text("Misses:", 500, yCoordTopUi);
    text("Misses:", 1440, yCoordTopUi);
    text("Time:", 725, yCoordTopUi);
    text("Time:", 1665, yCoordTopUi);
    text("Rules Section", 40, 550);
    text("Rules Section", 980, 550);
    textSize(25);
    text("Klik op de boten en sleep jouw boten naar de gewenste plaats.", 45, 610);
    text("Je kan jouw boten draaien door de toetsen 'H' en 'V' te gebruiken", 45, 635);
    text("'H' draait de boot horizontaal en 'V' draait de boot verticaal.", 45, 660);
    text("Eens jouw boot op de gewenste plaats staat druk je op de toets 'P'", 45, 685);
    text("om de locatie van je boot definitief vast te leggen.", 45, 710);
    text("Eens al jouw boten op het slagveld geplaatst zijn druk je op 'spacebar'", 45, 735);
    text("zodat speler2 zijn boten kan plaatsen.", 45, 760);
    text("Klik op de boten en sleep jouw boten naar de gewenste plaats.", 985, 610);
    text("Je kan jouw boten draaien door de toetsen 'H' en 'V' te gebruiken", 985, 635);
    text("'H' draait de boot horizontaal en 'V' draait de boot verticaal", 985, 660);
    text("Eens jouw boot op de gewenste plaats staat druk je op de toets 'P'", 985, 685);
    text("om de locatie van je boot definitief vast te leggen.", 985, 710);
  }
  private void rulesSection () {
    fill (255);
    stroke (0);
    for (int i=0; i<2; i++) {
      rect(40+ 940 * i, 550, 900, 450);
    }
  }
}