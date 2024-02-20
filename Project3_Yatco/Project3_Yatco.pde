void setup() {
float xt = 0;
float xpos = 0;

float xt2 = 0;
float xpos2 = 0;

float xt3 = 0;
float xpos3 = 0;

float xt4 = 0;
float xpos4 = 0;

float heightModifier = 0;

  noiseSeed(12213738);
  noiseDetail(0, 0);
  
  fullScreen();
  background(#F7C59F);

//Mountain1
  for (int i = 0; i < width * 2; i++)
  {
    xpos += 1;
    xt += 0.01;
    heightModifier = 150;

    float vNoise = 150 + (map(noise(xt), 0, 1, 0, 150));

    stroke(#2A324B);
    strokeWeight(5);
    line(xpos, vNoise, xpos, height);

    if (random(100) <= 75)
    { 
    strokeWeight(1);
    stroke(#2A324B);
    line(xpos, vNoise, xpos, random(heightModifier, heightModifier + 50));
    fill(color(#767B91));
    circle(xpos, vNoise, (random(0, 30)));
    }
  }

//Mountain2
  for (int k = 0; k < width * 2; k++)
  {
    xpos2 += 1.6;
    xt2 += 0.01;
    heightModifier = 300;

    float wNoise = heightModifier + (map(noise(xt2), 0, 1, 0, 250));

    stroke(#767B91);
    strokeWeight(5);
    line(xpos2, wNoise, xpos2, height);

    if (random(100) <= 70)
    {
      strokeWeight(1);
      stroke(#767B91);
      line(xpos2, wNoise, xpos2, random(heightModifier + 50, heightModifier + 100));
      fill(color(#2A324B));
      circle(xpos2, wNoise, (random(0, 30)));
    }
  }

//Mountain3
    for (int l = 0; l < width * 2; l++)
  {
    xpos3 += 1.9;
    xt3 += 0.01;
    heightModifier = 400;

    float xNoise = heightModifier + (map(noise(xt3), 0, 1, 0, 350));

    stroke(#2A324B);
    strokeWeight(5);
    line(xpos3, xNoise, xpos3, height);

    if (random(100) <= 60)
    {
      strokeWeight(1);
      stroke(#2A324B);
      line(xpos3, xNoise, xpos3, random(heightModifier + 100, heightModifier + 150));
      fill(color(#767B91));
      circle(xpos3, xNoise, (random(0, 30)));
    }
  }
  
//Mountain4
    for (int m = 0; m < width * 2; m++)
  {
    xpos4 += 2.1;
    xt4 += 0.01;
    heightModifier = 550;

    float yNoise = heightModifier + (map(noise(xt4), 0, 1, 0, 450));

    stroke(#767B91);
    strokeWeight(5);
    line(xpos4, yNoise, xpos4, height);

    if (random(100) <= 50)
    {
      strokeWeight(1);
      stroke(#767B91);
      line(xpos4, yNoise, xpos4, random(heightModifier + 150, heightModifier + 200));
      fill(color(#2A324B));
      circle(xpos4, yNoise, (random(0, 30)));
    }
  }
  
  println(map(50, 0, 100, -200, 300));
}
