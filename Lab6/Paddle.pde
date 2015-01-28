class Paddle
{
  int x;
  int y;
  int rx;
  int ry;
  boolean upPressed;
  boolean downPressed;
  boolean wPressed;
  boolean sPressed;

  Paddle()
  {
    x = 20;
    y = 200;
    rx = 780;
    ry = 200;
    upPressed = false;
    downPressed = false;
    wPressed = false;
    sPressed = false;
  }

  void draw()
  {
    rectMode(CENTER);
    fill(255);
    rect(x, y, 15, 100);
    rect(rx, ry, 15, 100);
    if (keyPressed)
    {
      if (key == 'w')
      {
        y = y - 10;
      }
      if (key == 's')
      {
        y = y + 10;
      }
      if (key == CODED && keyCode == UP)
      {
        ry = ry - 10;
      }
      if (key == CODED && keyCode == DOWN)
      {
        ry = ry + 10;
      }
      if (y <= 0 || y >= 400)
      {
        y += 0;
      }
    }
  }

  void keyReleased()
  {
    if (key == 's')
    {
      sPressed = false;
    }
    if (key == 'w')
    {
      wPressed = false;
    }
    if (key == CODED && keyCode == UP)
    {
      upPressed = false;
    }
    if (key == CODED && keyCode == DOWN)
    {
      downPressed = false;
    }
  }
}
