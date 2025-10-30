<h1 align=center>無盡之塔</h1>
<p align=center>這是一張以 Lua 撰寫的魔獸爭霸三地圖。為了增強遊戲表現，我加入了內置 JAPI 來簡化遊戲設計並客製化 UI。</p>
<p align="center">
    <img src="https://img.shields.io/badge/war3-1.26-blue"/>
    <img src="https://img.shields.io/badge/lua-5.4-yellow" alt="Angular on npm" />
    <img src="https://img.shields.io/badge/ydwe-1.32.13-yellow" alt="Angular on npm" />
    <img src="https://img.shields.io/badge/release-0.2.0-brightgreen">
</p>
<br/>

## 目錄
- [核心創意](#核心創意)
- [專案結構](#專案結構)
- [使用](#使用)
- [開發](#開發)
- [FAQ](#faq)

## 核心創意
![image](./static/mindmap.jpg)

## 專案結構
```
.
├─README.md
├─map.w3x：obj 格式的地圖檔
├─.w3x：lni 格式的地圖檔
├─doc：文件
├─map：地圖的原始碼
|  ├─main.lua：入口
├─static：靜態資源
├─resource：地圖的靜態檔
├─table：地圖的數據檔
├─trigger：地圖的觸發檔
├─w3x2lni：自動生成的 w3x2lni 格式轉換工具的版本紀錄
├─scripts：程式碼
|  ├─shared：公用包
|  ├─entity：war3 數據映射結構
```

## 開發
1. 資料夾名稱和地圖名稱一定要一樣，不然 w3x2lni 會無法打包。
2. 由於 w3x2lni 再打包後會自動將 `scripts/` 裡的檔案匯入到地圖裡。因此，當撰寫完程式之後，記得要先**打包再執行**。

## FAQ
1. 出現 `The term 'chcp 65001 && E:\projects\map/tools/w3x2lni/bin/w3x2lni-lua.exe' is not recognized` 的問題。
>必須使用 cmd.exe 執行。