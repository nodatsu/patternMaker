// ライトのクラス
class Light {
  float  aR, aG, aB;
  
  Light () {
    aR = 255;
    aG = 255;
    aB = 255;
  }
  
  // 更新
  void update() {
    ambientLight(aR, aG, aB);
  }
}
