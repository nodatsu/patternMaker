void mouseDragged()
{
  if (mouseButton == LEFT) {
    // 移動
    objPos.x += (mouseX - pmouseX) * PVector.dist(objPos, camera.eye) / 1000.0;
    objPos.y += (mouseY - pmouseY) * PVector.dist(objPos, camera.eye) / 1000.0;
  } else {
    // 回転
    if (keyPressed && keyCode == SHIFT) {
      objRotY += PI * (mouseX - pmouseX) / max(width, height);
    } else {
      objRotZ -= PI * (mouseX - pmouseX) / max(width, height);
      objRotX -= PI * (mouseY - pmouseY) / max(width, height);
    }
  }
}

void mouseWheel(MouseEvent ev) {
  // ズーム
  objPos.z += -500 * ev.getCount();
}

