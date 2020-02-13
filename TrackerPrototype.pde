final int STATE_LOGIN = 0;
final int STATE_DASHBOARD = 1;
final int STATE_GENERAL = 2;
final int STATE_INCIDENT = 3;
final int STATE_GPS = 4;
final int STATE_ADD = 5;
final int STATE_CHART = 6;
final int STATE_OPTIONS = 7;

int state;
PImage bg;

Button_c button1;
Button_c button2;
Button_c button3;
Button_c button4;
Button_c button5;
Button_c button6;
Button_c button7;
Button_c button8;
Button_c button9;
Button_c button10;
Button_c button11;
Button_c button12;
Button_c button13;
Button_c button14;
Button_c button15;
Button_c button16;
Button_c button17;

void setup(){
    size(1200,900);
    
    state = STATE_LOGIN;
}

void draw(){
    
    switch( state ) {

    case STATE_LOGIN:
      bg = loadImage("Login.jpg");
      image (bg,0,0);
      button1 = new Button_c(590,415,50);
      button2 = new Button_c(590,645,50);
      break;

    case STATE_DASHBOARD:
      bg = loadImage("Dashboard.jpg");
      image (bg,0,0);
      button3 = new Button_c(800,470,125);
      button4 = new Button_c(1080,40,50);
      button13 = new Button_c(1100,853,75);
      break;

    case STATE_GENERAL:
      bg = loadImage("General.jpg");
      image (bg,0,0);
      button5 = new Button_c(688,414,75);
      button6 = new Button_c(500,851,75);
      button7 = new Button_c(126,562,75);
      button12 = new Button_c(1037,795,75);
      break;
    
    case STATE_INCIDENT:
      bg = loadImage("IncidentReport.jpg");
      image (bg,0,0);
      button8 = new Button_c(1073,859,50);
      break;

    case STATE_GPS:
      bg = loadImage("DetailedGPS.jpg");
      image (bg,0,0);
      button9 = new Button_c(974,488,50);
      break;

    case STATE_ADD:
      bg = loadImage("AddDevice.jpg");
      image (bg,0,0);
      button10 = new Button_c(110,793,50);
      break;
      
    case STATE_CHART:
      bg = loadImage("Chart.jpg");
      image (bg,0,0);
      button11 = new Button_c(1108,849,50);
      break;
    
    case STATE_OPTIONS:
      bg = loadImage("Options.jpg");
      image (bg,0,0);
      button14 = new Button_c(1000, 128, 50);
      button15 = new Button_c(1000, 200, 50);
      button16 = new Button_c(1000, 45, 50);
      break;
      
    default:
      background(0);
      println("Unknown state: " + state );
      break;
  }
  
  println("x = " + mouseX);
  println("y = " + mouseY);
}

void mouseReleased() {
  switch(state)
  {
     case STATE_LOGIN:
     if(button1.checkClick() == true)
     {
        state = STATE_DASHBOARD;
     }
     else if(button2.checkClick() == true)
     {
        state = STATE_GENERAL;
     }
     break;
     
     case STATE_GENERAL:
     if(button5.checkClick() == true)
     {
        state = STATE_DASHBOARD;
     }
     else if(button6.checkClick() == true)
     {
        state = STATE_CHART;
     }
     else if(button7.checkClick() == true)
     {
        state = STATE_INCIDENT;
     }
     else if(button12.checkClick() == true)
     {
        state = STATE_LOGIN;
     }
     break;
     
     case STATE_DASHBOARD:
     if(button3.checkClick() == true)
     {
        state = STATE_GPS;
     }
     else if(button4.checkClick() == true)
     {
        state = STATE_OPTIONS;
     }
     else if(button13.checkClick() == true)
     {
        state = STATE_GENERAL;
     }
     break;
     
     case STATE_INCIDENT:
     if(button8.checkClick() == true)
     {
        state = STATE_DASHBOARD;
     }
     break;
     
     case STATE_GPS:
     if(button9.checkClick() == true)
     {
        state = STATE_GENERAL;
     }
     break;
     
     case STATE_ADD:
     if(button10.checkClick() == true)
     {
        state = STATE_DASHBOARD;
     }
     break;
     
     case STATE_CHART:
     if(button11.checkClick() == true)
     {
        state = STATE_GENERAL;
     }
     break;
     
     case STATE_OPTIONS:
     if(button14.checkClick() == true)
     {
         state = STATE_ADD;
     }
     else if (button15.checkClick() == true)
     {
         state = STATE_INCIDENT;
     }
     else if (button16.checkClick() == true)
     {
         state = STATE_DASHBOARD;
     }
     break;
     
     default: break;
     
  }
  
}
