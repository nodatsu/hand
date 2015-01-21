class Hand {

  Bone indexFinger;
  
  Hand() {
    indexFinger = new Bone(-40, -50, 0, 20, 40, 30, 0, 0, 0);
    indexFinger.child = new Bone(0, 0, 0, 20, 40, 30, 0, 0, 0);
    indexFinger.child.child = new Bone(0, 0, 0, 20, 40, 30, 0, 0, 0);
  }

  // update
  void update() {
    setAction();
    
    pushMatrix();
    translate(0, -100, 0);
    fill(255, 255, 255, 128);
    box(100, 100, 30);

    indexFinger.show();

    popMatrix();
  }
  
  // set action
  void setAction() {    
    indexFinger.swAmp.x         =  PI / 4;
    indexFinger.swPitch.x       =  0.2;
    indexFinger.swOrg.x         =  PI / 4 * 3;

    indexFinger.child.swAmp.x         =  PI / 4;
    indexFinger.child.swPitch.x       =  0.2;
    indexFinger.child.swOrg.x         = -PI / 4;

    indexFinger.child.child.swAmp.x         =  PI / 4;
    indexFinger.child.child.swPitch.x       =  0.2;
    indexFinger.child.child.swOrg.x         = -PI / 4;

  }
}
