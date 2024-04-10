class Net
{
  PVector pos = new PVector(800, 400);
  PVector extend = new PVector(200, 50);
  float time;
  
  boolean isOverlapping(Ball _ball)
  {
    return (_ball.pos.x > pos.x && _ball.pos.x < pos.x + extend.x && 
            _ball.pos.y > pos.y && _ball.pos.y < pos.x + extend.y);
  }
  
  void render()
  {
    time += 0.015;
    pos.x = 515 + (sin(time) * 500);
    
    noStroke();
    fill(#00B701);
    rect(pos.x, pos.y, extend.x, extend.y);
  }
}
