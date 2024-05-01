class Idle extends State
{
  void Execute(Troll ptroll){
    println("Idle State");
    if(ptroll.isFeelingSafe()){
      ptroll.ChangeState(new PatrolState());
    }
  }
};
