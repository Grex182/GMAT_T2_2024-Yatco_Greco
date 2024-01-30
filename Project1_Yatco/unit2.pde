//squares
class unit2
{
  PVector pos = new PVector(0,0);
  float radius = 40;
  color[] colors = { #469B6B, #0A2B6C, #4D2F10, #640303, #A5359A, #F02222 };
  float speed = 15;
  
  void render()
  {
    blendMode(ADD);
    
    //selecting color
    fill(colors[int(random(0, colors.length))]);
    
    //stroke weight
    noStroke();
    
    //draw squares
    square(pos.x, pos.y, radius);
  }
  
  void randomMove()
  {
    radius = random(10, 80);
    speed = 15;
    
    int diceRoll = (int)random(4);
    switch (diceRoll)
    {
      case 0: //left
      pos.x -= speed;
      break;
      case 1: //right
      pos.x += speed;
      break;
      case 2: //up
      pos.y -= speed;
      break;
      case 3: //down
      pos.y += speed;
      break;
    }
  }
}
