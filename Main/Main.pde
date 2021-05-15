Light[] letters = new Light[26];
Rotor[] rotors = new Rotor[4];
String letterOrder = "QWERTZUIOASDFGHJKPYXCVBNML";
String lowerCaseLetterOrder = letterOrder.toLowerCase();
final char emptykey = (char) -1;
char keyDown = emptykey;

// Setup function (occurs once at start of program)
void setup(){
  frameRate(60);
  size(1080, 720);
  initLetters();
}

void initLetters(){
 for (int i = 0; i < 26; i++){
   letters[i] = new Light(letterOrder.charAt(i), i);
 }
}

// Draw function (Occurs on every frame)
void draw(){
  clear();
  for (Light light: letters){
    light.show();
  }
  for (Rotor rotor: rotors){
    rotor.show();
  }
}

// Event on Key Press
void keyPressed(){
  if (lowerCaseLetterOrder.indexOf(key) >= 0 && keyDown == emptykey){
    keyDown = key;
    letters[lowerCaseLetterOrder.indexOf(key)].setLit(true);
    print(letters[lowerCaseLetterOrder.indexOf(key)].letter);
  }
}

// Event on Key Release
void keyReleased(){
  if (lowerCaseLetterOrder.indexOf(key) >= 0 && keyDown == key){
    keyDown = emptykey;
    letters[lowerCaseLetterOrder.indexOf(key)].setLit(false);
  }
}
