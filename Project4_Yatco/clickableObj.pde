class clickableObj
{
  PImage img;
  PVector pos;
  PVector speed;
  
  clickableObj(String _type)
  {
    img = loadImage(_type + ".png");
    img.resize(120, 120);
    pos = new PVector(random(200, width - 150), random(200, height - 150));
    speed = new PVector(random(-20, 17), random(-20, 17));
  }
  
  void move()
  {
    pos.x += speed.x;
    pos.y += speed.y;
    
    //right & down boundaries
    if (pos.x > width)
    {
      pos.x = width;
      speed.x *= -1;
    }
    if (pos.y > height)
    {
      pos.y = height;
      speed.y *= -1;
    }
    
    //left & up boundaries
    if (pos.x < 0)
    {
      pos.x = 0;
      speed.x *= -1;
    }
    if (pos.y < 0)
    {
      pos.y = 0;
      speed.y *= -1;
    }
  }
  
  void render()
  {
    imageMode(CENTER);
    image(img, pos.x, pos.y);
  }
}
