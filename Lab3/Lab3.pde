color r1fill = color(0, 0, 0);
color r2fill = 10;
color r3fill = 20;
color r4fill = 30;
color r5fill = 40;
color r6fill = 50;
color r7fill = 60;
color r8fill = 70;
color r9fill = 80;

void setup()
{
   size(600, 600);
   rectMode(CORNER);
   colorMode(HSB, 360, 100, 100);
}

void draw()
{
//Rect1
  fill(r1fill);
  rect(0, 0, 200, 200);
  textSize(50);
  fill(0, 0, 100);
  text("1", 75, 100);
//Rect2
  fill(r2fill);
  rect(200, 0, 200, 200);
  textSize(50);
  fill(0, 0, 100);
  text("2", 275, 100);
//Rect3
  fill(r3fill);
  rect(400, 0, 200, 200);
  textSize(50);
  fill(0, 0, 100);
  text("3", 475, 100);
//Rect4
  fill(r4fill);
  rect(0, 200, 200, 200);
  textSize(50);
  fill(0, 0, 100);
  text("4", 75, 300);
//Rect5
  fill(r5fill);
  rect(200, 200, 200, 200);
  textSize(50);
  fill(0, 0, 100);
  text("5", 275, 300);
//Rect6
  fill(r6fill);
  rect(400, 200, 200, 200);
  textSize(50);
  fill(0, 0, 100);
  text("6", 475, 300);
//Rect7
  fill(r7fill);
  rect(0, 400, 200, 200);
  textSize(50);
  fill(0, 0, 100);
  text("7", 75, 500);
//Rect8
  fill(r8fill);
  rect(200, 400, 200, 200);
  textSize(50);
  fill(0, 0, 100);
  text("8", 275, 500);
//Rect9
  fill(r9fill);
  rect(400, 400, 200, 200);
  textSize(50);
  fill(0, 0, 100);
  text("9", 475, 500);
}

void keyPressed()
{
  if(key == '1')
  {
    r1fill = color(random(0, 360), 100, 100);
  }
  if(key == '2')
  {
    r2fill = color(random(0, 360), 100, 100);
  }
  if(key == '3')
  {
    r3fill = color(random(0, 360), 100, 100);
  }
  if(key == '4')
  {
    r4fill = color(random(0, 360), 100, 100);
  }
  if(key == '5')
  {
    r5fill = color(random(0, 360), 100, 100);
  }
  if(key == '6')
  {
    r6fill = color(random(0, 360), 100, 100);
  }
  if(key == '7')
  {
    r7fill = color(random(0, 360), 100, 100);
  }
  if(key == '8')
  {
    r8fill = color(random(0, 360), 100, 100);
  }
  if(key == '9')
  {
    r9fill = color(random(0, 360), 100, 100);
  }
}

void mouseClicked()
{
  if(mouseX >= 0 && mouseX <= 200 && mouseY >= 0 && mouseY <= 200)
  {
    r1fill = color(random(0, 360), 100, 100);
  }
  if(mouseX >= 200 && mouseX <= 400 && mouseY >= 0 && mouseY <= 200)
  {
    r2fill = color(random(0, 360), 100, 100);
  }
  if(mouseX >= 400 && mouseX <= 600 && mouseY >= 0 && mouseY <= 200)
  {
    r3fill = color(random(0, 360), 100, 100);
  }if(mouseX >= 0 && mouseX <= 200 && mouseY >= 200 && mouseY <= 400)
  {
    r4fill = color(random(0, 360), 100, 100);
  }
  if(mouseX >= 200 && mouseX <= 400 && mouseY >= 200 && mouseY <= 400)
  {
    r5fill = color(random(0, 360), 100, 100);
  }if(mouseX >= 400 && mouseX <= 600 && mouseY >= 200 && mouseY <= 400)
  {
    r6fill = color(random(0, 360), 100, 100);
  }
  if(mouseX >= 0 && mouseX <= 200 && mouseY >= 400 && mouseY <= 600)
  {
    r7fill = color(random(0, 360), 100, 100);
  }
  if(mouseX >= 200 && mouseX <= 400 && mouseY >= 400 && mouseY <= 600)
  {
    r8fill = color(random(0, 360), 100, 100);
  }
  if(mouseX >= 400 && mouseX <= 600 && mouseY >= 400 && mouseY <= 600)
  {
    r9fill = color(random(0, 360), 100, 100);
  }
}
