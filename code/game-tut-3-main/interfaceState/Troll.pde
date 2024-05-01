class Troll
{
    PImage trollSprite;
    State m_pCurrentState;
    boolean feelingSafe = false;
    
    void Update(){
      m_pCurrentState.Execute(this);
    }
    
    void ChangeState(State pNewState){
      m_pCurrentState = pNewState;
    }
    
    boolean isFeelingSafe(){
      return feelingSafe;
    }
    
   void setFeelingSafe(boolean safety){
     feelingSafe = safety;
   }
};
