// create an array of frames mapping numbers
int[] idle2walk = {1, 1, 1, 1};
int[] walk2run = {1, 3, 5, 7};
int[] run2walk = {1, 1, 2, 2, 3, 3, 0, 0};
int idleAninFrameLength = 4; // these could be calculated from animation creation
int walkAninFrameLength = 4;
int runAnimFrameLength = 8;
int animFrame = 0;
// type check animation state


enum animState {
  Idle, Walking, Running
};

PImage[] idelAnimation;
PImage[] walkAnimation;
PImage[] runAnimation;
PImage[] currentAnimation;

// setting intial state
animState state = animState.Idle;
int animFrameLength = idleAninFrameLength; 


void setup() {
  state = animState.Idle;
  animFrameLength = idleAninFrameLength;
}

void draw(){
  animFrame= (animFrame+1)%animFrameLength;
  // need to have loaded the animation to draw them
  //image(currentAnimation[animFrame],10,10);
  println("anim ",animFrame, "\t ", frameCount, "\t ", state.name());
}

void mouseClicked(){
  run();
}

void run() {
  if (state == animState.Walking) {
    animFrame = walk2run[animFrame];
  }
  state = animState.Running;
  currentAnimation = runAnimation;
  animFrameLength = runAnimFrameLength;
}
