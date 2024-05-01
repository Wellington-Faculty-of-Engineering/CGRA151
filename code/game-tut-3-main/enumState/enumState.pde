enum State {IDLE,ATTACK,JUMP};

State currentState;
void setup(){
  currentState = State.IDLE;
}
void draw(){
  switch(currentState){
    case IDLE:
      println("idle state");
      if(seeEnemy()){
        ChangeState(State.ATTACK);
      }
      break;
    case ATTACK: 
      println("attack state");
      break;
    case JUMP:
      break;
  }
}

boolean seeEnemy(){
  return true;
}

void ChangeState(State newState){
  currentState = newState;
}
