int fruitsLeft;
int livesLeft;
int numberOfFruits;
int numberOfBombs;
clickableObj[] fruits;
clickableObj[] bombs;

void setup() {
  fullScreen();
  
  numberOfFruits = 5; //Change this number to change number of fruits on screen
  
  fruitsLeft = numberOfFruits;
  
  numberOfBombs = 3; //Change this number to change number of bombs on screen
  
  livesLeft = numberOfBombs;
  
  fruits = new clickableObj[numberOfFruits];
  
  bombs = new clickableObj[numberOfBombs];
  
  //identifies which fruits are to be rendered
  for (int i = 0; i < fruits.length; i++) 
  {
    String imageName;

    if (i % 5 == 0) // for everytime i can be divided by 5 and the remainder is 0, a banana will be made
    {
        imageName = "banana";
    } 
    else if (i % 4 == 0) // for everytime i can be divided by 4 and the remainder is 0, a banana will be made
    {
        imageName = "strawberry";
    } 
    else if (i % 3 == 0) // for everytime i can be divided by 3 and the remainder is 0, a banana will be made
    {
        imageName = "apple";
    } 
    else 
    {
        imageName = "cherry";
    }
    fruits[i] = new clickableObj(imageName);
  }
  
  for (int i = 0; i < bombs.length; i++) 
  {
    String bombName;
    
    bombName = "bomb";
    
    bombs[i] = new clickableObj(bombName);
    
    bombs[i].speed = new PVector(random(-8, 8), random(-8, 8)); //to change the speed of the bombs only
  }
}

void draw() {
  background(#CFA203);
  
  //draws the amount of fruits specified
  for (clickableObj fruit : fruits) 
  {
    if (fruit != null)
    {
    fruit.move();
    fruit.render();
    }
  }
  
  //draws the amount of bombss specified
  for (clickableObj bomb : bombs) 
  {
    bomb.move();
    bomb.render();
  }
  
  //for when player hovers over bomb
  for (int i = 0; i < bombs.length; i++)
  {
    clickableObj bomb = bombs[i];
    if (bomb != null && dist(bomb.pos.x, bomb.pos.y, mouseX, mouseY) < 100)
    {
      livesLeft -= 1;
      bombs[i].pos = new PVector(random(width), random(height));
      bombs[i].speed = new PVector(random(-8, 8), random(-8, 8));
    }
  }
  
  textSize(80);
  fill(#000000);
  textAlign(LEFT, TOP);
  text("Fruits Left: " + fruitsLeft, 20, 20);
  
  text("Lives Left: " + livesLeft, 20, 100);
  
  if (fruitsLeft <= 0)
  {
    textSize(160);
    text("You Win", width/2 - 300, height/2 - 100);
    stop();
  }
  
  if (livesLeft <= 0)
  {
    textSize(160);
    text("You Lose", width/2 - 300, height/2 - 100);
    stop();
  }
}

void mousePressed() 
{
  for (int i = 0; i < fruits.length; i++) 
  {
    clickableObj fruit = fruits[i];
    if (fruit != null && dist(fruit.pos.x, fruit.pos.y, mouseX, mouseY) < 100)
    {
      fruitsLeft -= 1;
      fruits[i] = null;
    }
  }
}
