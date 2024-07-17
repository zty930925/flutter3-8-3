//引入flutter核心套件
import 'package:flutter/material.dart';

//建立類別的靜態方法CommonDrawer
class CommonDrawer {
  //static函數 可以讓我們不須建立CommonDrawer物件，就能調度getDrawer函數
  //static函數 需要一個回傳物，且回傳值必須是Drawer ; BuildContext：紀錄頁面建構資訊
  static Drawer getDrawer(BuildContext context) {
    return Drawer(
      //child參數：可接Column或ListView，官網推薦ListView
      //ListView可以想像是Column(皆是擺盤元件)，但Column超出畫面時會出現異常，ListView則不會
      child: ListView(
        //將側邊選單的欄位內容與設定放於children內
        children: [
          //ListTile，可以想成是第一個按鈕，裡面設定相關的內容
          ListTile(
            //用戶能看到該按鈕功能的名字，叫做「主頁」
            title: const Text('主頁'),
            //onTap，當用戶點擊時，會自動觸發此函數中的內容
            onTap: () {
              //函數透過Navigator進行頁面的跳轉與切換
              Navigator.pushNamed(context, "/");
            },
          ),

          //建置第2個ListTile
          ListTile(
            //用戶能看到該按鈕功能的名字，叫做「第二個分頁」
            title: const Text('第二個分頁'),
            //onTap，當用戶點擊時，會自動觸發此函數中的內容
            onTap: () {
              //函數透過Navigator進行頁面的跳轉與切換
              Navigator.pushNamed(context, "/second");
            },
          )
        ],
      ),
    );
  }
}
