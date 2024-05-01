int mode = 0;
void setup() {
  mode = 0;
}
void draw() {
  if (mode == 0) {
    println("mode is wander");
  } else if (mode == 1) {
    // attack logic
    println("mode is attack");
  } else if (true) {
    //...
  }
}

void keyPressed(){
  if(key == '1'){
    mode = 1;
  }
}
