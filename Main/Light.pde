class Light{
  final int row0X = (int) (width * (0.15));
  final int row0Y = (int) (height * (0.6));
  final int row1X = (int) (width * (0.2));
  final int row1Y = (int) (height * (0.75));
  final int row2X = (int) (width * (0.13));
  final int row2Y = (int) (height * (0.9));
  final int lightSize = (int) (width * (0.07));
  final int lightPadding = (int) (width * (0.09));
  final int textSize = (int) (lightSize * (0.5));
  
  char letter;
  int pos, posX, posY;
  boolean lit;
  
  Light(char letter, int pos){
    this.letter = letter;
    this.pos = pos;
    calculatePos(pos);
  }
  
  void calculatePos(int pos){
    if (pos < 9){
      posY = row0Y;
      posX = row0X + pos * lightPadding;
    } else if (pos < 17){
      posY = row1Y;
      posX = row1X + (pos - 9) * lightPadding;
    } else{
      posY = row2Y;
      posX = row2X + (pos - 17) * lightPadding;
    }
  }
  
  void setLit(boolean lit){
   this.lit = lit;
  }
  
  void show(){
    if (lit)
      fill(#AFAFAF);
    else
      fill(#4E5000);
    circle(posX, posY, lightSize);
    
    if (lit)
      fill(#FAFF00);
    else
      fill(#B1B400);
      
    
    
    textAlign(CENTER, CENTER);
    textSize(textSize);
    text(letter, posX, posY - 5);
  }
}
