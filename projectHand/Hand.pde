class Hand {

  Hand() {
  }

  // update
  void update() {
    pushMatrix();
    translate(0, -100, 0);
    fill(255, 255, 255, 128);
    box(100, 100, 30);
    popMatrix();
  }
  
  // set action
  void setAction() {    
//    rightArm.swAmp.z         =  PI / 8;
//    rightArm.swPitch.z       =  1.0;
//    rightArm.swOrg.z         =  PI;
  }
}
