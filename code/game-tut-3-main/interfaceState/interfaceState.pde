Troll harry = new Troll();

void setup() {
  harry.ChangeState(new Idle());
}
void draw() {
  harry.Update();
}

void keyPressed(){
  if(key == '1'){
    harry.setFeelingSafe(true);
  }
}
