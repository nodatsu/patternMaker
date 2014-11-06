// 壁面のクラス

class Wall {
  float  wSize;       // 壁面の範囲
  float mInterval;  // メッシュ間隔
  color cPlane;     // 壁面の色
  color cMesh;      // メッシュの色
  
  // コンストラクタ
  Wall () {
    // 初期値
    wSize = 5000;
    mInterval = wSize / 10;
    cPlane = color(255, 255, 255, 128);
    cMesh = color(255, 255, 0, 128);
  }
  
  // 更新
  void update() {
    stroke(cMesh);
    strokeWeight(1);

    fill(cPlane);
    beginShape(QUADS);
      vertex(-wSize, -wSize, 0);
      vertex(-wSize,  wSize, 0);
      vertex( wSize,  wSize, 0);
      vertex( wSize, -wSize, 0);
    endShape();

    noFill();
    for (float u = -wSize; u <= wSize; u += mInterval)
    {
      line(-wSize, u, 0, wSize, u, 0); 
      line(u, -wSize, 0, u, wSize, 0); 
    }
  }
}
