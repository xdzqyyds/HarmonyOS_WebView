import webview from '@ohos.web.webview';

@Entry
@Component
struct Index {
  myContorller: webview.WebviewController = new webview.WebviewController()

  build() {
    Column() {
      // 直接使用网址
      Row() {
        Web({
          src: "https://m.baidu.com/",
          controller: this.myContorller
        })
      }
      .height('100%')
      .width('100%')
    }
  }
}