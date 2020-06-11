class Enemy extends GameObject {
  int transparency;

  Enemy() {

    super(random(0, width), random(0, height), 20, 1, white);
    while (touchingObstacle()) {
      x=random(0, width);
      y=random(0, height);
    }
    transparency = 0;
  }
  void act() {
    super.act();
    if (transparency<255) {
      transparency++;
    }else{
      objects.add(new Bull(x,y,5,1,white));
    }
  }
  void show() {

    fill(myColor, transparency);
    ellipse(x, y, size, size);
  }
}
