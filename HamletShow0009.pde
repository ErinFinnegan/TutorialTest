
String[] names = { 
  "Intelligence", "Athleticism", "Sanity", "Depression", "Occult", "Empathy", "Procrastination"
};
Slider[] sliders = new Slider[names.length];

char InCase = 'A';

float xPos; 

color BGColor;
color FontColor;
color LineColor = color(60, 200, 0);
boolean mouseDown;
float spacing; //spacing of lines and text

String PrinceOfDenmarkStats = ("Prince of Denmark Character Sheet");
//String StatNumString;
int Stat;
float StatY;

boolean StartPressed;
boolean GoToScreen1;
boolean GoToScreen2;
boolean GoToScreen3;
boolean GoToScreen4;

String GameOver = ("Game Over");
float textSpeed;

float textStart = 500;  //sets the start of screen2 text
float dotX;
float k = 1;
int s = second();

float TimeToReadScreen2;
PImage GameOverMockUp; 

boolean PDead;
boolean GDead;
boolean CDead;
boolean LDead;
boolean HDead;
boolean RGDead;
boolean ODead;

void setup() {
  size (640, 480);
  mouseDown = false;
  BGColor = 15;
  FontColor = 255;
  fill(FontColor);
  textFont(createFont("Kroeger0765", 20));
  spacing = 40;
  StartPressed = false;
  Stat = 1;
  GoToScreen1 = true;
  GoToScreen2 = false;
  GoToScreen3 = false;
  GoToScreen4 = false;
  StartPressed = false;
  textSpeed = 1;
  dotX = 25;
  TimeToReadScreen2 = 0;
  GameOverMockUp = loadImage("GameOverMockUp.png");

  for (int i = 0; i < sliders.length; i++) {
    int xPos = 10;
    int yPos = i*45 + 100;  //the multiplier changes the vertical spacing
    int sliderLength = 600;
    int arrowSize = 12;
    int arrowX = 270;   
    String name = names[i];  
    sliders[i] = new Slider(xPos, yPos, sliderLength, arrowSize, arrowX, name);
  }
  PDead= false;
  GDead= false;
  LDead= false;
  CDead= false;
  HDead= false;
  RGDead= false;
  ODead= false;


  switch(InCase) {
  default:
    break;
  case 'A':
    break;
  case 'B':
    break;        
  case 'C':
    break;
  case 'D':
    break;
  case 'E':
    break;
 // case 'Z':
 //   break;
  }
}

// 25 seconds after user clicks start, go to screen 3

void draw() {
  if (GoToScreen1 == true) {
    background(BGColor);
    //textSize(30);
    textAlign(CENTER);
    fill(60, 39, 188);
    text(PrinceOfDenmarkStats, width/2, 45);
    textAlign(LEFT);
    for (int i = 0; i < sliders.length; i++) {
      sliders[i].display();
      sliders[i].drag();
      sliders[i].stat();
    }

    stroke(255);
    noFill();
    rect(210, 420, 180, 50);
    textSize(32);
    text("Start", width/2-90, 460);
    textSize(20);
    if (StartPressed == true) {
      GoToScreen1 = false;
      GoToScreen2 = true;
      GoToScreen3 = false;
      TimeToReadScreen2 = millis();
    } 
    else {
      GoToScreen2 = false;
      GoToScreen3 = false;
    }
  }

  else if (GoToScreen2 == true) {
    fill (255);
    background(15);
    //println(TimeToReadScreen2);
    textSpeed = textSpeed - 1;
    text(GhostReveal, 20, textStart + textSpeed, width-30, height);
    println("InCase = " + InCase); 
    if (sliders[0].StatNum <= 6 && sliders[0].StatNum >= 3) {
      InCase = 'A';
    } 
    if (sliders[0].StatNum >= 9) {
      InCase = 'B';
    } 
    if (sliders[0].StatNum <= 2) {
      InCase = 'C';
    } 
    if (sliders[0].StatNum >= 7 && sliders[0].StatNum <=8 ) {
      InCase = 'D';
    } 
    if (sliders[4].StatNum >= 9 && sliders[0].StatNum >= 8) {
      InCase = 'E';
    }
    if (InCase == 'A') {
      text(WorriedAboutHamlet, 20, textStart+spacing*4 + textSpeed, width-30, height);
      text(AccidentallyKillsPolonius, 20, textStart+spacing*8 + textSpeed, width-30, height);
      text(RejectsOphelia, 20, textStart+spacing*12 + textSpeed, width-30, height);
      text(LaertesRevenge, 20, textStart+spacing*16 + textSpeed, width-30, height);
      text(GertrudeDrinksPoison, 20, textStart+spacing*20 + textSpeed, width-30, height);
      text(HamletDies, 20, textStart+spacing*24 + textSpeed, width-30, height);
      PDead= true;
      GDead= true;
      CDead= true;
      HDead= true;
      RGDead= true;
      ODead= true;
    } 
    if (InCase == 'B') {
      text(ScoobyDoo1, 20, textStart +spacing*4 + textSpeed, width-30, height);
      text(ScoobyDoo2, 20, textStart+spacing*8 + textSpeed, width-30, height);
      text(ScoobyDoo3, 20, textStart+spacing*12 + textSpeed, width-30, height);
      text(ScoobyDoo4, 20, textStart+spacing*16 + textSpeed, width-30, height);
      text(ScoobyDoo5, 20, textStart+spacing*20 + textSpeed, width-30, height);
    }
    if (InCase == 'C') {
      text(WorriedAboutHamlet, 20, textStart+spacing*4 + textSpeed, width-30, height);
      text(AccidentallyKillsPolonius, 20, textStart+spacing*8 + textSpeed, width-30, height);
      text(RejectsOphelia, 20, textStart+spacing*12 + textSpeed, width-30, height);
      text(LaertesRevenge, 20, textStart+spacing*16 + textSpeed, width-30, height);
      text(DumbHamlet1, 20, textStart+spacing*20 + textSpeed, width-30, height);
      text(DumbHamlet2, 20, textStart+spacing*24 + textSpeed, width-30, height);
      text(DumbHamlet3, 20, textStart+spacing*26 + textSpeed, width-30, height);
      PDead= true;
      GDead= true;
      CDead= true;
      HDead= true;
      RGDead= true;
      ODead= true;
    }
    if (InCase == 'D') {
      text(WorriedAboutHamlet, 20, textStart+spacing*4 + textSpeed, width-30, height);
      text(SmartHamlet1, 20, textStart+spacing*8 + textSpeed, width-30, height);
      text(SmartHamlet2, 20, textStart+spacing*12 + textSpeed, width-30, height);
      text(SmartHamlet3, 20, textStart+spacing*16 + textSpeed, width-30, height);
      text(SmartHamlet4, 20, textStart+spacing*20 + textSpeed, width-30, height);
      text(SmartHamlet5, 20, textStart+spacing*24 + textSpeed, width-30, height);
      GDead= true;
      LDead= true;
      CDead= true;
    }

    if (InCase == 'E') {
      text(WorriedAboutHamlet, 20, textStart+spacing*4 + textSpeed, width-30, height);
      text(OccultHamlet1, 20, textStart+spacing*8 + textSpeed, width-30, height);
      text(OccultHamlet2, 20, textStart+spacing*12 + textSpeed, width-30, height);
      text(OccultHamlet3, 20, textStart+spacing*16 + textSpeed, width-30, height);
      text(OccultHamlet4, 20, textStart+spacing*20 + textSpeed, width-30, height);
      text(OccultHamlet5, 20, textStart+spacing*24 + textSpeed, width-30, height);
      text(OccultHamlet6, 20, textStart+spacing*28 + textSpeed, width-30, height);
      text(OccultHamlet7, 20, textStart+spacing*32 + textSpeed, width-30, height);
    }
  }


  if (millis() >= TimeToReadScreen2 + 25000) {  //here is where the timer is set
    //InCase = 'Z';
    GoToScreen3 = true;
    GoToScreen2 = false;
  } 
  else {
    GoToScreen3 = false;
    GoToScreen2 = true;
  }
  if (GoToScreen3 == true) {
    println("InCase = " + InCase); 
    println("TimeToReadScreen2 = " + TimeToReadScreen2); 
    println("GoToScreen1 = " + GoToScreen1); 
    println("GoToScreen2 = " + GoToScreen2); 
    println("GoToScreen3 = " + GoToScreen3);
    println("StartPressed = " + StartPressed);  
    image (GameOverMockUp, 0, 0);
    if (PDead == true) {
      deathX(150, 230, 440);  //Pol
      println("PDead = " + PDead);
    }
    if (GDead == true) {
        deathX(150, 10, 220); //Gert
      println("GDead = " + GDead);
    }
    if (LDead == true) {
      deathX(25, 230, 440);  //Lae
      println("LDead = " + LDead);
    }
    if (CDead == true) {
      deathX(25, 10, 220);  //Claud
      println("CDead = " + CDead);
    }
    if (HDead == true) {
      deathX(460, 15, 120); //Hamlet
      println("HDead = " + HDead);
    }
    if (RGDead == true) {
      deathX(460, 340, 440); 
      println("RGDead = " + RGDead);
    }
    if (ODead == true) {
      deathX(460, 180, 280); //Oph
      println("ODead = " + ODead);
    }
    fill(255);
    text(GameOver, width/2-30, height/2);
    text("Reset", width/2-25, 460);
    stroke(255);
    noFill();
    rect(210, 420, 180, 50);
    if (mouseDown == true) {
      GoToScreen2 = false;
      GoToScreen1 = true;
      StartPressed = false;
      GoToScreen3 = false;
    }
  }
}

String GhostReveal = ("Hamlet sees his father's ghost.");
String RevengeVow= ("Hamlet vows to get revenge for his father's murder.");
String WorriedAboutHamlet = ("Hamlet's friends are worried because he's acting crazy.");
String HamletsPlot = ("Hamlet tricks Claudius into confessing to murder, using a stage play.");
String HamletWussesOut = ("Hamlet sees Claudius praying and can't bring himself to kill Claudius.");
String AccidentallyKillsPolonius  = ("Hamlet accidentally kills Polonius, stabbing him through a curtain.");
String RejectsOphelia = ("Hamlet rejects Ophelia, and she freaks out and kills herself.");
String LaertesRevenge= ("Laertes is super pissed that Hamlet killed his dad and drove his sister to suicide.");
String TimeToDuel= ("Laertes challenges Hamlet to a duel.");
String GertrudeDrinksPoison= ("Gertrude accidentally drinks from the poison cup. (She dies.)");
String LaertesGetsPoisoned= ("Laertes gets cut by his own poison sword and dies...D'oh!");
String HamletDies= ("Hamlet dies thanks to Laertes's poison sword.");
String ClaudiusDies= ("Hamlet kills Claudius, using stabbing AND poison.");
String RozGuilDie= ("It's revealed that Rosencrantz and Guildenstern are dead.");

String ScoobyDoo1 = ("Hamlet investigates the ghost.");
String ScoobyDoo2 = ("After carefully examining the evidence, he thinks it wasn’t a real ghost.");
String ScoobyDoo3 = ("Hamlet starts dating Ophelia, and uses her help to solve the crime.");
String ScoobyDoo4 = ("It turns out the ghost was Fortinbras all along!");
String ScoobyDoo5 = ("King Hamlet faked his own death to test Gertrude's loyalty.");

String SmartHamlet1 = ("Hamlet noticed Polonius spying on him, but lets him go.");
String SmartHamlet2 = ("Hamlet’s plan to get Claudius to confess works better than expected.");
String SmartHamlet3 = ("Claudius kills himself out of shame.");
String SmartHamlet4 = ("Unable to live with the guilt, Gertrude offs herself.");
String SmartHamlet5 = ("Hamlet is smart enough to save Rosencrantz and Guildenstern and marry Ophelia.");

String PirateQueen1 = ("Hamlet accidently kills Polonius and feels real bad about it.");
String PirateQueen2 = ("He makes sure Ophelia is OK, and that she boards the ship for England with him.");
String PirateQueen3 = ("The ship is attacked by pirates, and Ophelia is captured.");
String PirateQueen4 = ("Unfortunately, Hamlet dies trying to save Rosencrantz and Guildenstern.");
String PirateQueen5 = ("After several years living as a pirate, Ophelia becomes a pirate queen.");

String DumbHamlet1 = ("Hamlet drinks from the poison cup during the duel.");
String DumbHamlet2 = ("Gertrude also drinks from the poison cup.");
String DumbHamlet3 = ("Laertes pulls through OK, but feels pretty bad about everything.");

String OccultHamlet1 = ("Hamlet obsesses about his father’s ghost and starts researching the occult.");
String OccultHamlet2 = ("Hamlet discovers Yorick’s skull is actually a demilich.");
String OccultHamlet3 = ("With Hamlet’s help, Yorick raises his father King Hamlet from the dead.");
String OccultHamlet4 = ("Zombie King Hamlet kills Claudius for revenge.");
String OccultHamlet5 = ("Gertrude freaks out and kills herself.");
String OccultHamlet6 = ("King Hamlet’s soul departs.");
String OccultHamlet7 = ("Hamlet takes over the throne as some kind of witch king.");


String LowSanity1 = ("Hamet’s Proc and Dep are 10, his San is low");
String LowSanity2 = ("After the “To be or not to be speech” Hamlet cuts to the chase and kills himself.");
String LowSanity3 = ("Claudius and Gertrude rule happily ever after.");

class Slider {
  float xPos;
  float yPos;
  float sliderLength;
  float arrowSize;
  float arrowX;
  String name;
  boolean sliding = false;
  int StatNum;

  Slider (float xPos_, float yPos_, float sliderLength_, float arrowSize_, float arrowX_, String name_) {
    xPos = xPos_;
    yPos = yPos_;
    sliderLength = sliderLength_;
    arrowSize = arrowSize_;
    arrowX = arrowX_;
    name = name_;
    StatNum = 1;
  }
  void display() {
    stroke(LineColor);
    strokeWeight(4);
    // Use xPos, yPos and sliderLength to dynamically calculate the start and end points of your slider line
    line(xPos+260, yPos, xPos+sliderLength-50, yPos);
    noStroke();
    fill(LineColor);
    triangle(arrowX+arrowSize, yPos-arrowSize, arrowX, yPos+arrowSize, arrowX - arrowSize, yPos- arrowSize);
    fill(255);
    text(name, xPos+10, yPos);
    text(StatNum, xPos+sliderLength, yPos);
  }

  void drag() {
    arrowX = constrain(arrowX, 270, 560);
    if (mousePressed && dist(mouseX, mouseY, arrowX, yPos) < arrowSize) {
      arrowX = mouseX;
      sliding = true;
      //println(mouseX);
    }  
    else if ( !mousePressed ) {
      sliding = false;
    }
    //Then move your arrowXPos reset logic into an if statement that only cares about whether the sliding boolean has been set to true.
    if (sliding) {
      arrowX = mouseX;
      arrowX = constrain(arrowX, 270, 560);
      //      arrowX = constrain(arrowX, xPos+260, xPos+sliderLength-310);
    }
  }
  void stat() {
    if (arrowX >= 530) {
      StatNum = 10;
    } 
    else if (arrowX >= 500) {
      StatNum = 9;
    } 
    else if (arrowX >= 470) {
      StatNum = 8;
    } 
    else if (arrowX >= 440) {
      StatNum = 7;
    } 
    else if (arrowX >= 410) {
      StatNum = 6;
    } 
    else if (arrowX >= 380) {
      StatNum = 5;
    } 
    else if (arrowX >= 350) {
      StatNum = 4;
    } 
    else if (arrowX >= 320) {
      StatNum = 3;
    } 
    else if (arrowX >= 290) {
      StatNum = 2;
    } 
    else {
      StatNum = 1;
    }
  }
}


void mouseDragged () {
  mouseDown = true;
  //println ("MouseDown!!!");
}

void mouseReleased () {
  mouseDown = false;
  if (mouseX >= 210 && mouseX <= 390 && mouseY >= 420 && mouseY <= 470 && GoToScreen3 == false) {
    StartPressed = true;
  }

  else if (GoToScreen3 == true) {
    //else if (mouseX >= 210 && mouseX <= 390 && mouseY >= 420 && mouseY <= 470 && GoToScreen3 == true) {
    GoToScreen3 = false;
    GoToScreen2 = false;
    GoToScreen1 = true;
    StartPressed = false;  //restarts the game too quickly if commented out
    println ("You pressed reset!!");
    textSpeed = 0;
  }
}

void deathX (float startingPoint, float deathXtop, float deathXbottom) {
  noStroke();  
  fill( 255, 0, 0);
  quad(startingPoint, deathXtop, startingPoint+10, deathXtop, startingPoint+80, deathXbottom, startingPoint+70, deathXbottom);
  quad(startingPoint+70, deathXtop, startingPoint+80, deathXtop, startingPoint+10, deathXbottom, startingPoint, deathXbottom);
}

