float startX=10000;
float startY;
float endX=0;
float endY;
PImage vdgg;
PImage cage;

void setup()
{
  size(1500, 650);
  strokeWeight(2);
  background(0);
  vdgg = loadImage("vdgg.png");
  cage = loadImage("cage.jpg");
}
void draw()
{
  image(vdgg, 0, 250);
  image(cage, 750, 200);
  stroke(255, 255, 100);
  while (endX < 1500) {
    endX = startX + (int)(Math.random()*(4));
    endY = startY + (int)(Math.random()*(10) - 5);

    if (startX < 750 && endX >= 750 && endX < 1030) {
      if (endY > 200 && endY < 450) {
        startX = 1031;
        startY = (int)(Math.random()*(250) + 200);
        endX = startX + (int)(Math.random()*(4));
        endY = startY + (int)(Math.random()*(9)+4);
      }
    }

    if ((startY < 200 && endY >= 200 )|| (startY > 450 && endY < 450)) {
      if (endX > 750 && endX < 1030) {
        startX = 1031;
        startY = (int)(Math.random()*(250) + 200);
        endX = startX + (int)(Math.random()*(4));
        endY = startY + (int)(Math.random()*(9) + 4);
      }
    }
    line(startX, startY, endX, endY);

    startX=endX;
    startY=endY;
  }
  methodName();
}
void mousePressed() {
  startY=(int)(Math.random()*246)+255;
  startX=136+sqrt(-1*sq(startY)+780*startY-140000);
  endX=0;
  endY=375;
}

void methodName() {
}
