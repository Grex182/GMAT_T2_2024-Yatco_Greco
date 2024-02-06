unit[] brushes;

int iterations;

void setup()
{
  fullScreen();
  background(0);
  
  brushes = new unit[2];
  
  for (int i = 0; i < brushes.length; i++)
  {
    brushes[i] = new unit(); //the specific code that does it ig
    brushes[i].pos = new PVector(width, height); //randomizes position for each unit
  }
}

//std = standard deviation
float Gaussian(float std, float mean) //mean = change the center
{
  return std * randomGaussian() + mean;
}

void draw()
{
  for (int i = 0; i < brushes.length; i++)
  {
  brushes[1].render();
  }
  
  iterations++;
  
  if (iterations >= 200)
  {
    stop();
  }
}
