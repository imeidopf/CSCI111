class Ball
{
  int xpos;
  int ypos; 
  int xspeed;
  int yspeed;

  Ball()
  {
    xpos = int(random(100, 700));
    ypos = int(random(100, 300));
    xspeed = int(random(5, 10));
    yspeed = int(random(5, 1));
  }

  void draw()
  {
    noStroke();
    fill(255, 0, 0);
    ellipse(xpos, ypos, 20, 20);
  }

  void update()
  {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if (xpos > 790 || xpos < 10)
    {
      xspeed *= -1;
    }
    if (ypos > 390 || ypos < 10)
    {
      yspeed *= -1;
    }
    if (get(xpos + 10, ypos) == color(255)
      || get(xpos - 10, ypos) == color(255))
    {
      xspeed *= -1;
    }
    if (get(xpos, ypos + 10) == color(255)
      || get(xpos, ypos - 10) == color(255))
    {
      yspeed *= -1;
    }
    if (get(xpos + 10, ypos) == color(255, 0, 0)
      || get(xpos - 10, ypos) == color(255, 0, 0))
    {
      xspeed *= -1;
    }
    if (get(xpos, ypos + 10) == color(255, 0, 0)
      || get(xpos, ypos - 10) == color(255, 0, 0))
    {
      yspeed *= -1;
    }
  }
}

