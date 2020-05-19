class Obstacle extends GameObject{
Obstacle(){
super(purple);
}
void act(){
super.act();
if(dist(x,y,myPlayer.x,myPlayer.y)<size/2+myPlayer.size/2){
PVector bounce=new PVector(myPlayer.x-x,myPlayer.y-y);
  bounce.setMag(5);
  myPlayer.x=myPlayer.x+bounce.x;
myPlayer.y=myPlayer.y+bounce.y;
}

}






}
