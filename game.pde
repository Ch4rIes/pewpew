void game() {
  background(green);
  
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if(obj.isDead()){
    objects.remove(i);
    }else{
    i++;
    }
  }
  if(frameCount%60==0){
 objects.add(new Enemy());
}
}

void gameClicks() {
 
}
