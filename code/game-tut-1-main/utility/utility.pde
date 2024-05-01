

  //function to scale by a float
  void imageScale(PImage toScale, float scale){
    toScale.resize(int(toScale.width*scale),int(toScale.height*scale));
  }
  
  void imageDouble(PImage toScale){
    // toScale.resize(int(toScale.width*2),int(toScale.height*2));
    // but better to reuse
    imageScale(toScale,2.0);
  }
