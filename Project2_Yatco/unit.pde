class unit
{
  PVector pos = new PVector(0,0);
  
  void render()
  {
      float maxMWidth = 400;
  
  blendMode(DIFFERENCE);
  
  noStroke();
  
  fill(color(random(0,255), random(0,255), random(0,255)));
  PVector point1 = new PVector(maxMWidth,height); // lower left //add the gaussian constrain here
  PVector point2 = new PVector(width/2 + Gaussian(100,0), constrain(Gaussian(100, 200), 20, height/2)); // top center
  PVector point3 = new PVector(width - maxMWidth, height); // lower right
  triangle(Gaussian(150,point1.x), point1.y, Gaussian(150,point2.x), Gaussian(-20,point2.y), Gaussian(150,point3.x), point3.y);
  }
}
