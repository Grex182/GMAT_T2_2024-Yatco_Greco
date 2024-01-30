//circles
class unit
{
  PVector pos = new PVector(0,0);
  float radius = 40;
  color[] colors = { #793636, #357EBC, #8EB288, #B26A2F, #AF7C7C, #36B74C };
  float speed = 15;
  
  void render()
  {
    blendMode(BLEND);
    
    //selecting color
    fill(colors[int(random(0, colors.length))]);
    
    //stroke weight
    strokeWeight(random(0, 4));
    stroke(color(random(0,255),random(0,255),random(0,255)));
    
    //draw circle
    circle(pos.x, pos.y, radius);
  }
  
  void randomMove()
  {
    radius = random(10, 90);
    speed = 10;
    
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
