//SP1 Opgave lavet sammen med min gruppe, Phillipp og Betül
int x = 50;                                 //Start position for min første terning i x, y
int y = 50;
int size = 10;                              //Størelse på øjnene på terningerne 
float diceColor = random(256);              //Tilføjer en random grå farve til terningerne og øjnene hver gang man kører sketchen
float eyesColor = random(256);

Die die = new Die(0, 255);
Die die2 = new Die(0, 255);
Die die3 = new Die(0, 255);
Die die4 = new Die(0, 255);
Die die5 = new Die(0, 255);
Die die6 = new Die(0, 255);

DiceCup diceCup = new DiceCup();


void setup() {                                //Tegner min background
  size(600, 600);
  rectMode(CENTER);
  background (#2B7C0C);
  diceCup.draw(x, y, size);
}

void draw() {
}


void keyPressed() {                           // Tilføjer 2 keyPressed koder til at enten ryste bægeret eller adde en ny terning i bægeret
  if (key == ENTER) {
    background (#2B7C0C);
    diceCup.shake();
    diceCup.draw(x, y, size);
  }

  if (key == '1') {
    background (#2B7C0C);
    Die die = new Die(0, 255);
    diceCup.addDie(die);
    diceCup.draw(x, y, size);
  }
}


class Die {                                   //Tagner min klasse for terningerne

  color eyeColor;
  color dieColor;
  int eyes = (int)random(1, 7);
  int x;
  int y;

  public Die(color eyeColor, color dieColor) {
    this.eyeColor=eyeColor;
    this.dieColor=dieColor;
  }
  public int rollDie() {
    eyes = (int)random(1, 7);
    return eyes;
  }

  public int getEyes() {
    return eyes;
  }


  void draw(int x, int y, int size) {         //Tegner mine øjne til terningerne 
    fill(diceColor);
    noStroke();
    rect(x, y, 50, 50, 5);
    if (eyes ==1 || eyes == 3 || eyes == 5) {
      fill(eyesColor);
      ellipse(x, y, 10, 10);
    } 
    if (eyes ==2 || eyes == 3 || eyes == 4 || eyes == 5 || eyes == 6) {
      fill(eyesColor);
      ellipse(x - 18, y - 18, 10, 10);
      ellipse(x + 18, y + 18, 10, 10);
    } 
    if (eyes == 4 || eyes == 5 || eyes == 6) {
      fill(eyesColor);
      ellipse(x - 18, y + 18, 10, 10);
      ellipse(x + 18, y - 18, 10, 10);
    } 
    if (eyes == 6) {
      fill(eyesColor);
      ellipse(x - 18, y, 10, 10);
      ellipse(x + 18, y, 10, 10);
    }
  }
}
