void keyPressed() {
  switch (key) {
  case 's':
    String filename = "img" + year();
    filename += String.format("%1$02d", month());
    filename += String.format("%1$02d", day());
    filename += "_";
    filename += String.format("%1$02d", hour());
    filename += String.format("%1$02d", minute());
    filename += String.format("%1$02d", second());
    filename += ".jpg";
    save(filename);
    break;
  case 'm':
    mode++;
    mode %= 4;
    break;
  }
}

