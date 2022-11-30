void setup() {
  size(700, 700);
}
void draw() {
  background(255);
  for (int i=0; i<5; i++)
  {
    float x=random(0, 600);
    float y=random(0, 600);
    float s=random(200, 700);
    float d=random(200, 700);
    line(0, y, 700, y);
    line(x, 0, x, 700);

    rectMode(CORNERS);
    rect(x, y, s, d);
    fill(random(50, 100), random(125, 225), random(100, 255));
    stroke(0);

    line(0, d, 700, d);
    line(s, 0, s, 700);
    strokeWeight(8);
    frameRate(8);
  }
}
