# Game Tut 2

Initial Physics code submitted refactored  from
https://openprocessing.org/sketch/118103/

This shows balls colliding and elastic collisons

Student should continue to work on the Assignment 3 sprites manipulation

## Tasks
   1. Get text on screen
   1. Think about the camera as separate from the screen - show how a camera X might move in relation to the world to move what is being shown
   1. Do a simple sprite collision between the drawing area of the sprites
   1. Try adding audio to the game using [audio examele](Audio/Audio.pde)


If you want text onscreen then they can use
```java
    fill(255);
    text(frameCount%6 +" "+ frameCount, 20, 20);
```

If you are struggling with processing coordinate system you can create `world2screen#` function to make world coordinates with 0,0 in the bottom corner to 0,0 in the top corner with y doing down the screen by doind
```java
    int world2screenx( int px){
        return px-camerax;
    }
    int world2screeny( int py){
        return height-(py - cameray); 
    }  // where height is the screen and cameray =0 for side scrolling
```
Now you can think in normal coordinates and when you draw you just have to remember that every world x,y needs to be converted before it is drawn


