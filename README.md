# NSYSU-LBP (Local Binary Patterns)
 - A level：達到題目所規範之A level標準電路
   - Top module為LBP，其餘submodule在LBP_module資料夾中

 - CHIP：基於A level電路進一步修改至可以下線之版本
   - PIN數量：50 -> 24 (其他16個為PAD與CORE的電源)
   - 新增了module "DS" 來將訊號分成多個週期輸出，以減少PIN數量
   - 完成ASIC的Design flow，並成功下線

 - DFT：將CHIP電路新增DFT
   - 將電路內的DFF替換成Scan Chain，以提升Fault Coverage
   - 基於一些submodule新增TMR，使電路發生Fault時仍可以正常運作

 - Pattern：驗證電路所使用的testbench
   - testfixture：PIN尚未限縮前使用的testbench
   - testfixture_chip：PIN限縮後使用的testbench

