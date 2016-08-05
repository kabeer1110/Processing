int level = 0;
//the floats for the interactive screen//
float yPos;
float vel;
float size;

void setup(){
//sets up the canvas size for the 
   size(800,800);
   background(255);
   vel = 12;
   yPos = 0;
   
//the text adventure begins from here   
println("You are having a terrible nightmare.As you grasp for breath and try to wake up you realise that your body is frozen. What will you do now ?");
println("");
println("Press 1 to Force yourself to wake-up.");
println("Press 2 to Give in to the nightmare and wait for it to get over.");

}

//the code for the interactive screen begins from here 
void draw(){
  fill(0, 10);
  rect(0, 0, width, height);

moveDrop();

//the mouseX & mouseY makes it possible for the circles to change shape
makeDrop(width/4, mouseX/4);
makeDrop(3*width/4, mouseY/3);

size = calculateSize(mouseX/8, mouseY/8);
makeDrop(width/2, size+5);
}

//this code makes the balls go one way and then come down
void moveDrop(){
  yPos += vel/2;

if(yPos > width || yPos < 0){
vel *= -1;
}


}
//this code makes maps the ball and keeps it in the boundaries
void makeDrop(float xPos, float size){
  int r = (int)xPos;
  int g = (int)yPos;
  
  if(r>255){
    r = 100;
  }
  
  if(g>255){
    g = 100;
  }

  noStroke();
  fill(r,g,227);
  ellipse(yPos, xPos, size, size);
  ellipse(xPos, yPos, size/5, size/5);
  rect(yPos/5, xPos/5, size/3, size/2);
  arc(yPos/2, xPos/2, size/8, size/9,0, HALF_PI);
  arc(xPos/2, yPos/2, size/2, size/2, HALF_PI, PI);
  arc(xPos/4, yPos/4, size/1, size/2, PI, PI+QUARTER_PI);
  arc(xPos/2, yPos/2, size/2, size/2, PI+QUARTER_PI, TWO_PI);
}


float calculateSize(float x1, float y1){
  
  float s = x1 + y1;
  return s;
}

//the text adventure begins from here

void keyPressed(){

if (key == '1'){
  println("");
  println("");
  println("You finally get out from the dream and get up in bed. You realise that you are sweating and as you make a move to the kitchen to have some water; you hear something. There is some inside your restroom using it. You live alone. What will you do now ?");
  println("");
  println("Press 3 to Go and open the restroom door.");
  println("Press 4 to Leave the house immediately and call 911.");
  level = 1;
  }
 
  else if (key == '2'){
    println("");
    println("");
    println("The nightmare has subsided and you did not realise when did you fall asleep. It is morning now and you can hear the birds chirping. You mouth is dry and as soon as you try to get up and drink some water, you realise that your legs are paralysed. You cannot move them at all. What will you do now ?");
    println("");
    println("Press 5 to Crawl out of the bed till your door and then cry for help out on the streets as you do not have cell phone.");
    println("Press 6 to Wait for your mother as she is about to come home in hour when her shift ends.");
    level = 2;
}

if (key == '3' && level == 1){
  println("");
  println("");
  println("You are relieved to see that it is your boyfriend. He sneaked into the house to give you a surprise. What will you do now ?");
  println("");
  println("Press 7 to Go up to him & kiss him.");
  println("Press 8 to Get very angry for his sneaky prank.");
  level = 3;
}

else if (key == '4' && level == 1){
  println("");
  println("");
  println("You run out of the house and call 911. As you are waiting on the sidewalk you see man in your bedroom. He has your little sister who is supposed to be in her boarding school right now. What will you do now ?");
  println("");
  println("Press 9 to still wait for 911 to arrive.");
  println("Press q to rush back to your house to save her.");
  level = 4;
}

if (key == '5' && level == 2){
  println("");
  println("");
  println("You crawl out of the house and some how roll over the stairs to reach the front door. As soon as you open the door to cry for help you see man being stabbed infant of you. What will you do now ?");
  println("");
  println("Press w to call out for help from all the passerby.");
  println("Press e to sit quietly & let him be stabbed.");
  level = 5;
}

else if (key == '6' && level == 2){
  println("");
  println("");
  println("You are waiting for your mother twisting and turning in your bed. Finally the door of your bedroom swings open. It is not your mother, it’s your neighbour with blood all over his clothes. What will you do now ?");
  println("");
  println("Press r to scream and shout out for help.");
  println("Press t to wait for the guy to make a move.");
  level = 6;
}

if (key == '7' && level == 3){
  println("");
  println("");
  println("While kissing him you notice a bloody knife in the bath tub. What will you do now ?");
  println("");
  println("Press y to confront him and ask about the knife.");
  println("Press u to take him back to bed and act on this later.");
  level = 7;
}

else if (key == '8' && level == 3){
  println("");
  println("");
  println("He makes it up to you; tells you how much he loves you. He comes up to you and kisses you. While kissing him you notice a bloody knife in the bath tub. What will you do now ?");
  println("");
  println("Press i to confront him and ask about the knife.");
  println("Press o to take him back to bed and act on this later.");
  level = 8;
}
if (key == '5' && level == 4){
  println("");
  println("");
  println("As you wait for 911 to come you can see the man take out a knife and turn off the light in your room. Everything has gone dark. What will you do now ?");
  println("");
  println("Press p to rush now and save your sister.");
  println("Press a to still wait for 911.");
  level = 9;
}

else if (key == '6' && level == 4){
  println("");
  println("");
  println("You rush into the house but while climbing the stairs, you loose your step. You roll all the way don and break a your ankle. What will you do now ?");
  println("");
  println("Press s to go struggle and still try to get on the stairs.");
  println("Press d to wait for 911 to arrive now.");
  level = 10;
}

if (key == 'w' && level == 5){
  println("");
  println("");
  println("You shout out for help. The stabbers gets nervous. Stabs you into your guts and runs away. What will you do now ?");
  println("");
  println("Press f to give in an wait for help to arrive or die.");
  println("Press g to keep fighting and keep calling for help.");
  level = 11;
}

else if (key == 'e' && level == 5){
  println("");
  println("");
  println("You let him get stabbed. He turns out be a mugger who gets nervous and leaves. You crawl to the guy, find a phone in his pocket. What will you do now ?");
  println("");
  println("Press h to call 911 or a family member.");
  println("Press j to shout for help");
  level = 12;
}

if (key == 'r' && level == 6){
  println("");
  println("");
  println("As soon as you shout the guy gets nervous. He rushes towards you and grabs your mouth. What will you do now?");
  println("");
  println("Press k to fight back to the guy.");
  println("Press l to keep calm and wait for an opportunity to strike.");
  level = 11;
}

else if (key == 't' && level == 6){
  println("");
  println("");
  println("He calms down and tells you that your mother injured. She was hit by a truck at the curb and has been taken to the hospital. What will you do now ?");
  println("");
  println("Press m to ask him to carry/take you to the hospital.");
  println("Press n to call for a  doctor as you are paralysed yourself.");
  level = 12;
}

}