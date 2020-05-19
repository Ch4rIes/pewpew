class Bull extends GameObject {
  Bull() {

    super(myPlayer.x, myPlayer.y, 5, 1, yellow);
    PVector aim=new PVector(mouseX-myPlayer.x, mouseY-myPlayer.y);
    vx=aim.x;
    vy=aim.y;
  }
  void act() {
    super.act();
    if (x<0||x>width||y<0||y>height) {
      hp=0;
    }
    int i=0;
    while (i<objects.size()) {
      GameObject obj= objects.get(i);
      if (obj instanceof Obstacle) {
        if (dist(obj.x, obj.y, x, y)<obj.size/2+size/2) {
          PVector bounce=new PVector(-(obj.x-x),-(obj.y-y));
          bounce.setMag(10);
          vy=bounce.y;
          vx=bounce.x;
        }
      }
      if(obj instanceof Enemy){
      if (dist(obj.x, obj.y, x, y)<obj.size/2+size/2) {
        obj.hp--;
      }
      }
      i++;
    }
  }
}
