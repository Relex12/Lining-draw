// This is were are stored the up/down left/right corner functions.
// You are not really supposed to add any stuff here, but I promise I wouldn't hold it against you.


void outline(int maxVal, int offset) {
  line (offset, offset, offset, maxVal+offset);
  line (offset, offset, maxVal+offset, offset);
  line (maxVal+offset, maxVal+offset, offset, maxVal+offset);
  line (maxVal+offset, maxVal+offset, maxVal+offset, offset);
}


void grid (int maxVal, int step, int Xoff, int Yoff) {
  for (int i = step; i < maxVal; i = i+step) {
    line (i+Xoff, Yoff, i+Xoff, maxVal+Yoff);
    line (Xoff, i+Yoff, maxVal+Xoff, i+Yoff);
  }
}

/////////////////////
// Angle functions //
/////////////////////

// 1
void upleftcorner(int maxVal, int step, int Xoff, int Yoff) {
  for (int i = 0; i < maxVal; i = i+step) {
    line (i+step+Xoff, Yoff, Xoff, maxVal-i+Yoff);
  }
}

// 2
void downleftcorner(int maxVal, int step, int Xoff, int Yoff) {
  for (int i = 0; i < maxVal; i = i+step) {
    line (Xoff, i+Yoff, i+step+Xoff, maxVal+Yoff);
  }
}

// 3
void uprightcorner(int maxVal, int step, int Xoff, int Yoff) {
  for (int i = 0; i < maxVal; i = i+step) {
    line (i+Xoff, Yoff, maxVal+Xoff, i+step+Yoff);
  }
}

// 4
void downrightcorner(int maxVal, int step, int Xoff, int Yoff) {
  for (int i = 0; i < maxVal; i = i+step) {
    line (i+Xoff, maxVal+Yoff, maxVal+Xoff, maxVal-i-step+Yoff);
  }
}
