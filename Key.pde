void keyPressed() {
  if (key == 's') {
      String filename = "img" + year() + month() + day() + "_" + hour() + minute() + second() + ".jpg";
      save(filename);
  }
}
