Ball myBall;
Net myNet;

int score;
int misses;
int backgroundColor = 128;

PVector wind = new PVector(0.05, 0);
PVector gravity = new PVector(0, 0.5);

PVector mouseClickPos = new PVector();
PVector mouseReleasePos = new PVector();
boolean isDragging = false;
boolean released = false;

void setup()
{
  size(1280, 720);
  myBall = new Ball();
  myNet = new Net();
}

void spawnNewBall()
{
  myBall = new Ball();
  released = false;
  isDragging = false;
  
  backgroundColor = 255;
  backgroundColor = 128;
  
  myNet.pos.x = random(width - myNet.extend.x);
  println("Net pos " + myNet.pos.x);
}

void draw()
{
  background(backgroundColor);
  
  textSize(80);
  fill(#000000);
  textAlign(LEFT, TOP);
  text("Score: " + score, 20, 20);
  
  textAlign(RIGHT, TOP);
  text("Misses: " + misses, (width-20), 20);
  
  if (released)
  {
    //myBall.addForce(wind);
    myBall.addForce(gravity);
    myBall.update();
    
    if (myNet.isOverlapping(myBall) && myBall.velocity.y > 0)
   {
     score += 1;
      println("SHOOT");
      spawnNewBall();
      released = false;
    }
  }
  
  myNet.render();
  myBall.render();
  
  if (isDragging)
  {
    strokeWeight(3);
    stroke(#000000);
    line(mouseClickPos.x, mouseClickPos.y, mouseX, mouseY);
  }
}

void mousePressed()
{
  if (!isDragging && !released)
  {
    mouseClickPos = new PVector(mouseX, mouseY);
    isDragging = true;
  }
}

void mouseReleased()
{
  if (isDragging)
  {
    mouseReleasePos = new PVector(mouseX, mouseY);
    released = true;
    isDragging = false;
    
    PVector _vectorOffset = mouseClickPos.sub(mouseReleasePos);
    float _magnitude = mag(_vectorOffset.x, _vectorOffset.y);
    PVector _dir = _vectorOffset.normalize();
    
    myBall.addForce(_dir.mult(_magnitude/14));
  }
}
