# HarmonyOS_WebView

#### 介绍

使用 @ohos.web.webview 嵌入远程网址

#### 开发平台

Win11 + DevEco Stuido

#### 指定URL

在 entry/src/main/ets/pages/Index.ets 文件中修改scr;

```
  Web({
      src: "https://m.baidu.com/",
      controller: this.myContorller
    })
```
### 指定应用名称
1.修改 entry\src\main\resources\base\element\string.json 文件中 EntryAbility_label 的 value 为 Baidu

2.同时修改和 base 同级的 zh_CN、en_US 下的 string.json 文件中 EntryAbility_label 的 value 为 Baidu

```
{
  "string": [
    {
      "name": "module_desc",
      "value": "module description"
    },
    {
      "name": "EntryAbility_desc",
      "value": "使用 @ohos.web.webview 嵌入远程网址"
    },
    {
      "name": "EntryAbility_label",
      "value": "Baidu"
    }
  ]
}
```

#### 相关权限

1. 使用页面引入资源： import webview from '@ohos.web.webview';

2. 需要在文件中添加授权：entry\src\main\module.json5
```
"requestPermissions": [{
    "name": "ohos.permission.INTERNET"
}]
```

#### 使用说明

打开应用，可以看到上面嵌入了百度带关键词搜索页。

#### 约束与限制

本示例仅支持标准系统上运行，支持设备：华为手机或运行在DevEco Studio上的华为手机设备模拟器。


