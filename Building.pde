// 建物クラス
class Building {
  float bSize;
  color bColor;
  PVector position;
  float rotate; 

  Building(float pv, float pu, float mv, float mu) {
    bSize = random(40, 80);
    bColor = color(random(128, 255), random(128, 255), random(128, 255));
    position = new PVector(pu + random(-mu / 2, mu / 2), pv + random(-mv / 2, mv / 2));
    rotate = random(PI);
  }

  // 更新
  void update() {
    switch (mode) {
    case 0:
    case 2:
      smooth();
      stroke(0);
      strokeWeight(1);
      break;
    case 1:
    case 3:
      noStroke();
      break;
    }
    fill(bColor);

    pushMatrix();
    translate(position.x, position.y, bSize / 2);
    rotateZ(rotate);
    box(bSize);
    popMatrix();
  }
}

