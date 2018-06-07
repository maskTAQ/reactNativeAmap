# 基于reactnative的AMap:3D实现



## AMap:props

| 属性 | 说明 | 类型 | 默认值 
| :- | :- | :- |  :- | 
| locationEnabled | 显示自身位置 | bool | false
| locationRepresentationStyle | locationRepresentationStyle | bool | false
| indoorMapVisible | 显示室内地图 | bool | false
| trafficVisible | 显示路况 | bool | false

### props:locationRepresentationStyle

| 字段名 | 说明 | 类型 | 默认值 
| :- | :- | :- |  :- | 
| showsAccuracyRing | 精度圈是否显示 | bool | false
| showsHeadingIndicator | 是否显示方向指示 | bool | true
| fillColor | 精度圈 填充颜色 | string | 
| strokeColor | 精度圈 填充颜色 | string | 
| lineWidth | 精度圈 边线宽度 | number | 0
| enablePulseAnnimation | 内部蓝色圆点是否使用律动效果 | bool | true
| locationDotBgColor | 定位点背景色 | string | #fff
| locationDotFillColor | 定位点蓝色圆点颜色 | string | blue
| image | 定位图标src | string | 

## Marker:props

| 属性 | 说明 | 类型 | 默认值 
| :- | :- | :- |  :- | 
| title | 点击标注显示的title | string | 
| subTitle | 点击标注显示的subTitle | string | false


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


# 说明

    学习原生代码，造rn组件轮子...
