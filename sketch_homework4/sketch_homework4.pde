PImage img;
int maxAgents;
ArrayList agentList;
float rad;

void setup() {
  size(700, 800);
  img = loadImage("11.jpeg");
  img.resize(width, height);

  maxAgents = 10000;
  agentList = new ArrayList();
rad=0;
  
}

void draw() {
  background(255);
  if (agentList.size() < maxAgents) {

    Agent myAgent = new Agent(new PVector(random(width/2-30, width/2+30), random(height/2-30, height/2+30)), rad);
    agentList.add(myAgent);
  }
  for (int i = 0; i < agentList.size(); i ++) {
    Agent tempAgent = (Agent)agentList.get(i);
    tempAgent.run();
  }
  frameRate(5000);
}
