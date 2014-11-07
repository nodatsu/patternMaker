// 建物クラス
class Building {
  float bSize;     // 建物のサイズ
  color bColor;  // 建物の色
  PVector position;
  float rotate; 

  Building(float pv, float pu, float mv, float mu) {
    bSize = 50;
    bColor = color(128);
    position = new PVector(pu + random(-mu / 2, mu / 2), pv + random(-mv / 2, mv / 2));
    rotate = random(PI);
  }
  
  // 更新
  void update() {
    smooth();
    stroke(0);
    strokeWeight(1);
    fill(bColor);

    pushMatrix();
    translate(position.x, position.y, bSize / 2);
    rotateZ(rotate);
    box(bSize);
    popMatrix();
  }
}
