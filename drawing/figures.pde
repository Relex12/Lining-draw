// This is where the pre-recorded figures are stored.
// For better code management, this is where you should add your own figures.
// Advice : before making your own, make sure you understand the recorded ones.


// Just as a reminder : this is how the Processing coordinate system works :

//  • →   X                          line (x1, y1, x2, y2):
//  ↓     Y



/////////////
// Figures //
/////////////

// eye shape
void figure5(int maxVal, int step) {
  upleftcorner(maxVal/2, step, 0, 0);
  uprightcorner(maxVal, step, 0, 0);
  downleftcorner(maxVal, step, 0, 0);
  downrightcorner(maxVal/2, step, maxVal/2, maxVal/2);

  upleftcorner(maxVal/8, step, maxVal/2, maxVal/2);
  downleftcorner(maxVal/8, step, maxVal/2, maxVal/2-maxVal/8);
  uprightcorner(maxVal/8, step, maxVal/2-maxVal/8, maxVal/2);
  downrightcorner(maxVal/8, step, maxVal/2-maxVal/8, maxVal/2-maxVal/8);
}


// heart shape
void figure4(int maxVal, int step) {
  upleftcorner(maxVal/2, step, 0, 0);
  uprightcorner(maxVal/2, step, 0, 0);
  upleftcorner(maxVal/2, step, maxVal/2, 0);
  uprightcorner(maxVal/2, step, maxVal/2, 0);
  downleftcorner(maxVal, step, 0, 0);
  downrightcorner(maxVal, step, 0, 0);
}


// basic shape but smaller and centered
void figure3(int maxVal, int step) {
  int offset = maxVal/4;
  upleftcorner(maxVal/2, step, offset, offset);
  downleftcorner(maxVal/2, step, offset, offset);
  uprightcorner(maxVal/2, step, offset, offset);
  downrightcorner(maxVal/2, step, offset, offset);
}


// four-ray star shape
void figure2(int maxVal, int step) {
  upleftcorner(maxVal/2, step, maxVal/2, maxVal/2);
  downleftcorner(maxVal/2, step, maxVal/2, 0);
  uprightcorner(maxVal/2, step, 0, maxVal/2);
  downrightcorner(maxVal/2, step, 0, 0);
}


// basic shape
void figure1(int maxVal, int step) {
  int offset = 0;
  outline(maxVal, offset);
  upleftcorner(maxVal, step, offset, offset);
  downleftcorner(maxVal, step, offset, offset);
  uprightcorner(maxVal, step, offset, offset);
  downrightcorner(maxVal, step, offset, offset);
}


// unit test function
void test(int maxVal, int step, int Xoff, int Yoff, int num) {
  switch (num) {
    case 1:
      upleftcorner(maxVal, step, Xoff, Yoff); break;
    case 2:
      downleftcorner(maxVal, step, Xoff, Yoff); break;
    case 3:
      uprightcorner(maxVal, step, Xoff, Yoff); break;
    case 4:
      downrightcorner(maxVal, step, Xoff, Yoff); break;
  }
}
