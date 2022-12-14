ArrayList<Particle> particles;
PImage img;
int n, s, maxR;

void setup() {
  size(800, 800);
  background(#E3FBFF);
  smooth();

  n = 20000;
  s = 20;
  maxR = height/2 - height/8;

  particles = new ArrayList<Particle>();
  img=loadImage("1.jpg");
}

void draw() {
  translate(width/2, height/2);
  noStroke();

  if (s > 5) {
    if (particles.size() != 0) {
      for (int i = 0; i < particles.size(); i++) {
        Particle p = particles.get(i);
        p.show();
        p.move();
        if (p.isDead())
          particles.remove(i);
      }
    } else {
      s -= 2;
      initParticles();
    }
  }
}

void initParticles() {
  for (int i = 0; i < n; i++) {
    particles.add(new Particle(maxR, s));
    Particle p = particles.get(i);
    int x = int(map(p.pos.x, -maxR, maxR, 0, img.width));
    int y = int(map(p.pos.y, -maxR, maxR, 0, img.height));
    p.c = img.get(x, y);
  }
}
