//Designed by Jason Imeidopf and Nate Brown

PImage bat, ball, arena;
int ballspeed = + 1;
float xpos = 470;
float ypos = 310;
float xspeed = 7;
float yspeed = random(4, 10);
int bath = 100;
int xdir = 1;
int ydir = 1;
int baty = 270;
int score = 0;
int fc = 1;
boolean gameover = false;

void reset_game()
{
  ballspeed = + 1;
  xpos = 470;
  ypos = 310;
  xspeed = 7;
  yspeed = random(4, 10);
  xdir = 1;
  ydir = 1;
  baty = 270;
  score = 0;
  fc = 1;
}

void setup()
{
  size(960, 640);
  bat = loadImage("sources/bat.png");
  ball = loadImage("sources/ball.png");
  arena = loadImage("sources/arena.png");
}

void draw()
{
  background(arena);
  xpos = xpos + (xspeed * xdir);
  ypos = ypos + (yspeed * ydir);
  if (xpos >= 901)
  {
    xdir *= -1;
  }
  if (ypos >= 600 || ypos <= 20)
  {
    ydir *= -1;
  }
  stroke(#FF0000);
  line(39, 21, 39, 619);
  /*Guidelines
   line(480, 21, 480, 619);
   line(0, 320, 960, 320);
   */
  image(bat, 40, baty, 15, bath);
  image(ball, xpos, ypos);
  if (xpos <= 55 && ypos >= baty && ypos <= baty + 100)
  {
    xdir *= -1;
    score = score + 1;
  }
  if (xpos <= 20)
  {
    gameover = true;
    textSize(30);
    text("You Lose", width/2 - 65, height/2 + 10);
    text("Click to Restart", width/2 - 105, height/2 + 40);
    xpos = -50;
    ypos = -50;
    xdir *= 0;
    ydir *= 0;
  }
  if (keyPressed)
  {
    if (key == 'w')
    {
      if (baty - 30 >= 0)
      {
        baty = baty - 10;
      }
    }
    if (key == 's')
      if (baty + 90 <= 600)
      {
        baty = baty + 10;
      }
  }
  if (fc % 300 == 0)
  {
    yspeed += random(1, 3);
    xspeed += random(1, 3);
  }
  if (fc % 600 == 0)
  {
    bath -= 10;
  }
  textSize(20);
  text("Score: " + score, 40, 40);
  fc++;
}

void mouseClicked()
{
  if (gameover)
  {
    gameover = false;
    reset_game();
  }
}
