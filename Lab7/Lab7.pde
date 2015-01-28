ImageViewer iv;

void setup()
{
  size(800, 600);
  iv = new ImageViewer("img.jpg");
}

void draw()
{
  background(0);
  iv.draw();
  if (keyPressed)
  {
    if (key == CODED)
    {
      if (keyCode == LEFT)
      {
        iv.rotateLeft();
      }
      if (keyCode == RIGHT)
      {
        iv.rotateRight();
      }
    }
  }
}

// mouseWheel movements include two-finger gestures on touchpads
void mouseWheel(MouseEvent event)
{
  float e = event.getCount();
  iv.zoom(e); // e represents how much the wheel moved
}

void mouseDragged()
{
  iv.drag(mouseX-pmouseX, mouseY-pmouseY);
}

void keyPressed()
{
  if (key == 'r')
  {
    iv.reset();
  }
}
