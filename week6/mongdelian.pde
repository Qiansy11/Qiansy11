import controlP5.*;

ControlP5 cp5;
Accordion accordion;

color c = color(100, 0, 0);
color e = color(0,0,100);
color l = color(0,100,0);

int myColorBackground = color(0, 0, 0);

ControlWindow controlWindow;

public int backGround = 40;

void setup() {
  size(700, 700);

  cp5 = new ControlP5(this);
  background(255);
  smooth();
  gui();
  cp5.addSlider("backGround")
    .setRange(0, 255)
    .setPosition(60, 30)
    .setSize(200, 29);
}

void gui() {

  cp5 = new ControlP5(this);

  cp5.addBang("color")
    .setPosition(10, 30)
    .setSize(30, 30)
    .plugTo(this, "shuffle") ;
}

void shuffle() {
  c = color(random(255), random(255), random(255));
  e = color(random(255), random(255), random(255));
  l = color(random(255), random(255), random(255));
}

void draw() {
  background(backGround);

  float x=random(100, 400);
  float y=random(100, 400);
  float s=random(200, 700);
  float d=random(200, 700);
  float m=random(200, 300);
  float n=random(200, 300);
  for (int i=0; i<5; i++)
  {
    rectMode(CORNERS);
    rect(x, y, s, d);

    fill(c);
    rect(s, d, m+s, n+d);
    fill(e);
    rect(x, d, m-s*0.5, n-d*0.5);
    fill(l);
    stroke(0);

    line(0, d, 700, d);
    line(s, d, s, 700);
    line(0, y, x, y);
    line(x, 0, x, 700);
    line(0, n+d, 700, n+d);
    line(m+s, 0, m+s, 700);
    line(0, n-d*0.5, 700, n-d*0.5);
    line(m-s*0.5, 0, m-s*0.5, 700);
    strokeWeight(8);
    frameRate(1);
  }
}
void myTextfield(String theValue) {
  println(theValue);
}

void myWindowTextfield(String theValue) {
  println("from controlWindow: "+theValue);
}
