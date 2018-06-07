/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';

import { processColor, requireNativeComponent } from 'react-native';

const AMap = requireNativeComponent('AMapView', null);
const Marker = requireNativeComponent('Marker', null);


export default class App extends Component{
  state = {
    a: false
  };
  render() {
    return (
      <AMap
        ref={e => this.AMap = e}
        style={{ flex: 1 }}
        locationEnabled={false}
        locationRepresentationStyle={{ fillColor: processColor('red'), lineWidth: 6, showsAccuracyRing: true, enablePulseAnnimation: true, image: 'https://avatars3.githubusercontent.com/u/19301145?s=460&v=4' }}
        trafficVisible={false}
        indoorMapVisible={false}
      >
        <Marker title="你好" subTitle="我是默认标注" />
      </AMap>
    )
  }
}
