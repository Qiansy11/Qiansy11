### 🤔

<!--
**Qiansy11/Qiansy11** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
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
