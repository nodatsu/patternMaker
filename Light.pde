// ライトのクラス

class Light {
  float  lightAR, lightAG, lightAB;  // 環境光の色
  float  lightPR, lightPG, lightPB;  // 点光源の色
  
  // コンストラクタ
  Light () {
    // 色の初期値(環境光)
    lightAR = 128;
    lightAG = 128;
    lightAB = 128;
    // 色の初期値(点光源)
    lightPR = 255;
    lightPG = 255;
    lightPB = 255;
  }
  
  // 更新
  void update() {
    // 環境光のセット
    ambientLight(lightAR, lightAG, lightAB);
    // 点光源のセット
    pointLight(lightPR, lightPG, lightPB, 200, -500, 200);
  }
}
