// This is the type name of the class.  I've added
// _c (underscore and c) so that when I read my code
// I will know I am looking at a class(c) I have made.
class Button_c {
  
  int x;        // Variables to store position on screen.
  int y;
  int diameter; // Variable for the diameter of our button.
  
  // Constructor / initialiser
  // This function is used when creating an
  // instance of your class, and should set up
  // any class variables
  Button_c( int set_x, int set_y, int set_d ) {
    
    // Initialise class variables.
    x = set_x;
    y = set_y;
    diameter = set_d;
    
  }
  
  boolean checkClick() {
     float distance;
     
     // First, use built in function to calculate distance.
     // Note, mouseX and mouseY are global.
     distance = dist( mouseX, mouseY, x, y );
     
     // Distance can be negative!  Nice bug potential here.
     distance = abs( distance );
     
     // If the distance is less than the radius, we were
     // clicked. 
     if( distance < ( diameter / 2 ) ) {
        return true; 
     } 
     
     // If the above fails, we were not clicked.
     return false;
  }
  
}
