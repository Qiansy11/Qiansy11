### 🤔


void setup()
{
size(600,500);
}

void draw()
{
  
  for(int i = 0; i<330;i+=30) 
  {
    for(int j = 0; j<330; j+=30)
    {
      fill(random(0,255));
      rect(2*i,2*j,60,60);
      saveFrame("frames/####.png");
      
    }
  } 
}
