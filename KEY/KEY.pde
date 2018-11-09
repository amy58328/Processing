Ring[] rings; // Declare the array
int numRings = 50;
int currentRing = 0;

void setup() {
  size(600, 600);
  smooth();
  rings = new Ring[numRings]; // Create the array
  for (int i = 0; i < numRings; i++) {
    rings[i] = new Ring(); // Create each object
  }
}

void draw() {
  background(0);
  for (int i = 0; i < numRings; i++) {
    rings[i].grow();
    rings[i].display();
  }
}

// Click to create a new Ring
void keyPressed() {
  rings[currentRing].start(key);
  currentRing++;
  if (currentRing >= numRings) {
    currentRing = 0;
  }
}

class Ring {
  float x, y; // X-coordinate, y-coordinate
  float size; // Diameter of the ring
  boolean on = false; // Turns the display on and off
  int r,g,b;
  char c;
  void start(char key) {
    c = key;
    r = (int)random(255);
    g = (int)random(255); 
    b = (int)random(255); 
    x = (float)random(600);
    y = (float)random(600);
    on = true;
    size = 100;
  }

  void grow() {
    if (on == true) {
      size += 0.5;
      if (size > 400) {
        on = false;
      }
    }
  }

  void display() {

    if (on == true) {
      textSize(size);
      fill(r,g,b);
      text(c,x,y);
    }
  }
}
