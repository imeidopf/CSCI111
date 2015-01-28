color red = color(203, 0, 0, 128);
int r = 25;
color green = color(86, 102, 35, 220);
int g = 5;

void setup()
{
  size(500, 500);
}

void draw()
{
  background(0);
  for (int s = -500; s <= 525; s = s + 100)
  {
    stroke(green);
    strokeWeight(g);
    line(s + 30, -25, s + 580, 525);
    line(s + 70, -25, s + 620, 525);
    line(s + 30, 525, s + 580, -25);
    line(s + 70, 525, s + 620, -25);
  }
  for (int l = -500; l <= 525; l = l + 100)
  {
    stroke(red);
    strokeWeight(r);
    line(l, -25, l + 550, 525);
    line(l, 525, l + 550, -25);
  }
}

