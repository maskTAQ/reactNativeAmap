# 基于reactnative的AMap:3D实现

## ios

1. 在 AppDelegate.m 文件中引入所需头文件
```objective-c
#import <AMapFoundationKit/AMapFoundationKit.h>
```
2. 在 AppDelegate.m 文件的 didFinishLaunchingWithOptions 方法中配置高德 Key
3. 将ios/AMapView拖进项目中
4. 在js中引入原生组件
```javascript
import { requireNativeComponent } from 'react-native';
const AMap = requireNativeComponent('AMapView', null);
```
5. props

| 属性 | 说明 | 类型 | 默认值 | 必须
| :- | :- | :- |  :- | 
| locationEnabled | 显示自身位置 | bool | false


# 说明

    学习原生代码，造rn组件轮子...
