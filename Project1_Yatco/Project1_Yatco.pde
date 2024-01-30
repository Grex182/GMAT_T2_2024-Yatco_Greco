unit[] brushes;
unit2[] brushes2;

int iterations;

void setup() 
{
  fullScreen();
  brushes = new unit[2];
  brushes2 = new unit2[2];

//circles
//loop to instantiate the unit class
  for (int i = 0; i < brushes.length; i++) 
  {
    brushes[i] = new unit(); //the specific code that does it ig
    brushes[i].pos = new PVector(random(width), random(height)); //randomizes position for each unit
  }
  
  //squares
  //loop to instantiate the unit class
  for (int i = 0; i < brushes2.length; i++) 
  {
    brushes2[i] = new unit2(); //the specific code that does it ig
    brushes2[i].pos = new PVector(random(width), random(height)); //randomizes position for each unit
  }

  background(#747438);
}

void draw() 
{
  //circles
  //loop for how many times a circle is produced and direction of where a circle will be created
  for (int i = 0; i < brushes.length; i++) 
  {
    brushes[i].render();
    brushes[i].randomMove(); // makes a circle either left, right, up or bottom of previous circle
    brushes[i].radius = random(10, 40); // size of circle
    iterations++;
  }
  
  //squares
    //loop for how many times a circle is produced and direction of where a circle will be created
  for (int i = 0; i < brushes2.length; i++) 
  {
    brushes2[i].render();
    brushes2[i].randomMove(); // makes a circle either left, right, up or bottom of previous circle
    brushes2[i].radius = random(10, 40); // size of circle
    iterations++;
  }
  
    if (iterations >= 500)
  {
    stop();
  }
}
