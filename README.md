# 論文題目
### 多感測器實現辨識與定位應用於室內消毒之研究
# 研究內容
### 感測器融合演算法的設計開發
# Demo
[https://www.youtube.com/watch?v=2acZDCj7aHs]
# 摘要
機器人消毒可以細分成三個流程。首先，Simultaneous Localization and Mapping (SLAM) 用於解決移動機器人在未知空間的定位問題。其次，3D object detection 用於幫助移動機器人理解潛在污染物體所在位置。第三，移動機器人後續進行路徑規劃演算法以及消毒工作。本論文將研究方向著重在 3D object detection，並提出了一個感測器融合演算法 (基於相機及 3D LiDAR 的 3D object detection 算法) 來識別和定位潛在污染物體。
# 簡述感測器融合演算法
1. 以相機、3D LiDAR 作為感測器融合演算法的輸入，對空間中的三維物體進行辨識與定位
2. 相機影像提供細粒度的紋理和顏色資訊，適合用於物體辨識
3. 3D LiDAR 利用飛時測距 (ToF) 捕獲場景中的深度資訊，並且生成三維點雲，適合用於物體定位
4. 通過 Cascade Mask R-CNN 深度網路，對相機影像中的物體進行辨識以及語義分割
5. 通過相機針孔模型以及語義分割資訊，從三維點雲中提取物體表面上的點雲
6. 通過 Graham Scan 演算法、Rotating Calipers 演算法在物體表面上的點雲周圍生成三維邊界框以完成物體定位
7. Robot Operating System 用於傳輸感測器數據至遠端電腦，以便在遠端電腦上實現感測器融合演算法的開發

