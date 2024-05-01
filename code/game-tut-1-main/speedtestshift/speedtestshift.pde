// Testing of using "right shift" as a faster technique than red(), green(), and blue()
int numberOfTests = 10000000;
int start;
int end;
color testColour;
int a;
int r;  // Faster way of getting red(testColour)
int g;   // Faster way of getting green(testColour)
int b;
float f_a;
float f_r;
float f_g;
float f_b;


void setup() {
  testColour = color(204, 204, 51, 255);
  a = (testColour >> 24) & 0xFF;
  r = (testColour >> 16) & 0xFF;  // The claim is this is faster way of getting red(testColour)
  g = (testColour >> 8) & 0xFF;   
  b = testColour & 0xFF;          
  fill(r, g, b, a);
  rect(30, 20, 55, 55);
  frameRate(5); // lowered the frame rate so there is plenty of time between calculations.
}

void draw() {  
  testColour = color(frameCount%255, 204, 51, 255); // using the mod of frameCount is useful to force calculations
  //-------- Test of Original code -----------------
  start = millis();
  for (int i = 0; i<numberOfTests; i++)
  { 
    a = (testColour >> 24) & 0xFF;
    r = (testColour >> 16) & 0xFF;  // Faster way of getting red(testColour)
    g = (testColour >> 8) & 0xFF;   // Faster way of getting green(testColour)
    b = testColour & 0xFF;          // Faster way of getting blue(testColour)
    fill(r, g, b, a);
  }
  end = millis();  
  print("Shift:\t", end-start);
  //----------- End test -------------
  
  //-------- Test of Function call -----------------  
  start = millis();
  for (int i = 0; i<numberOfTests; i++)
  {
    fill(red(testColour), green(testColour), blue(testColour), alpha(testColour));
  }
  end = millis();  
  print("\t Func:\t", end-start);
  //----------- End test -------------

  //-------- Test of Function call and assignment -----------------  
  start = millis();
  for (int i = 0; i<numberOfTests; i++)
  {
    f_a = alpha(testColour);
    f_r = red(testColour);  
    f_g = green(testColour);   
    f_b = blue(testColour);        
    fill(f_r, f_g, f_b, f_a);
  }
  end = millis();  
  print("\t Func+ass:\t", end-start);
  //----------- End test -------------

  //-------- Test of divide  ----------------- 

  start = millis();
  for (int i = 0; i<numberOfTests; i++)
  {
    a = (testColour / 0xFFFFFF) & 0xFF;
    r = (testColour / 0xFFFF) & 0xFF;  // Faster way of getting red(testColour)
    g = (testColour / 0xFF) & 0xFF;   // Faster way of getting green(testColour)
    b = testColour & 0xFF;          // Faster way of getting blue(testColour)
    fill(r, g, b, a);
  }
  end = millis();  
  println("\t Divide rather than shift:\t", end-start);
}
