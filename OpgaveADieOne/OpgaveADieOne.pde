//Opgave A

int dieOne = int (random(6))+1;

//Tegner bordet terningerne bliver slået på. 
void setup() {
  size(400, 400);
  background(#30712A);
  rectMode(CENTER);
  rect(height/2, width/2, 70, 70);
}

void draw() {
  if (dieOne ==1) {
    fill(0);
    ellipseMode(CENTER);
    ellipse(height/2, width/2, 10, 10);
  } else if (dieOne ==2) {
    fill(0);
    ellipseMode(CENTER);
    ellipse(height/2-18, width/2-18, 10, 10);
    ellipse(height/2+18, width/2+18, 10, 10);
  } else if (dieOne ==3) {
    fill(0);
    ellipseMode(CENTER);
    ellipse(height/2, width/2, 10, 10);
    ellipse(height/2-20, width/2-20, 10, 10);
    ellipse(height/2+20, width/2+20, 10, 10);
  } else if (dieOne ==4) {
    fill(0);
    ellipseMode(CENTER);
    ellipse(height/2+18, width/2-18, 10, 10);
    ellipse(height/2-18, width/2+18, 10, 10);
    ellipse(height/2-18, width/2-18, 10, 10);
    ellipse(height/2+18, width/2+18, 10, 10);
    } else if (dieOne ==5) {
    fill(0);
    ellipseMode(CENTER);
    ellipse(height/2, width/2, 10, 10);
    ellipse(height/2+18, width/2-18, 10, 10);
    ellipse(height/2-18, width/2+18, 10, 10);
    ellipse(height/2-18, width/2-18, 10, 10);
    ellipse(height/2+18, width/2+18, 10, 10);
     } else if (dieOne ==6) {
    fill(0);
    ellipseMode(CENTER);
    ellipse(height/2+18, width/2, 10, 10);
    ellipse(height/2-18, width/2, 10, 10);
    ellipse(height/2+18, width/2-18, 10, 10);
    ellipse(height/2-18, width/2+18, 10, 10);
    ellipse(height/2-18, width/2-18, 10, 10);
    ellipse(height/2+18, width/2+18, 10, 10);
  }
}
