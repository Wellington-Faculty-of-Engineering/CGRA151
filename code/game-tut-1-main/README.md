# Game tut 1

Reading sprites and managing keyboard

## Sprites

For this tutorial you will need to load a sprite, display it on screen, and then animate the sprite. 
The steps:
1. Create a PImage to store the sprite sheet
1. Create an array of PImages
1. In a for loop use spriteSheet.get(x,y,width,height); to assign the individual frames of the animation.
1. In the draw() fuction draw the images from the array you created by using image(imageArray[animFrame], 10,10); where animFrame = frameCount%6;  

**note:** you can use nosmooth(); and image.resize(image.width\*2,image.height\*2) to make a sprite larger. I have added example functions in the [utility/utility.pde](utility/utility.pde) file

## Input

You will now move the animated sprite around the screen.
The process:
1. create a variable for sprite velocity, and a booleans for rightMove and leftMove
1. create moveRight, moveLeft and moveStop functions which set the velocity value, and sets the boolean for moving direction.
1. add the void keyPressed(){ } function which checks if the key ='d' for example.  This will also call the moveRight function above
1. add the void keyRelease(){} function which calls the moveStop function and checks which key was released and turns the equivalent moving boolen to false.
1. In the draw() function check the moving boolean is set and updates the position of the sprite by the velocity

This whould allow you to have an animate sprite moving back and forth.
