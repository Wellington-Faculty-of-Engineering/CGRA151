class PatrolState implements State
{
  void Execute(Troll ptroll){
    println("Patrol State");
    if(ptroll.isFeelingSafe()){
      ptroll.ChangeState(new PatrolState());
    }
  }
};
