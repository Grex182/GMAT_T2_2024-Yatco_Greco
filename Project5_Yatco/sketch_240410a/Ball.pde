class Ball
{
  PVector pos = new PVector(400, height/2 - 200);
  float radius = 100;
  
  PVector velocity = new PVector();
  PVector acceleration = new PVector(0.1, 0.1);
  
  float velocityLimit = 20;
  float mass = 1;
  
  void render()
  {
    fill (#DE0809);
    stroke(#000000);strokeWeight(2);
    circle(pos.x, pos.y, radius);
  }
  
  void addForce(PVector force)
  {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  
  void checkBounce()
  {
    if (pos.y > height - (radius/2))
    {
      velocity.y *= -1;
      velocity.y = lerp(velocity.y, 0, 0.2);
      pos.y = height - (radius/2);
    }
    
    if (pos.x > width - (radius/2))
    {
      velocity.x *= -1;
      velocity.x = lerp(velocity.x, 0, 0.2);
      pos.x = width - (radius/2);
    }
    
    if (pos.x < 0 - (radius/2))
    {
      velocity.x *= -1;
      velocity.x = lerp(velocity.x, 0, 0.2);
      pos.x = (radius/2);
    }
  }
  
  void update()
  {
    velocity.add(acceleration);
    //velocity.limit(velocityLimit);
    pos.add(velocity);
    acceleration.mult(0);
    velocity.x = lerp(velocity.x, 0, 0.01); //drag
    
    checkBounce();
  }
}
