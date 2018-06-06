/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';

import { processColor,requireNativeComponent } from 'react-native';

const AMap = requireNativeComponent('AMapView', null);

type Props = {};
export default class App extends Component<Props> {
  componentDidMount() {
console.log(processColor('red'));
  }
  render = () => <AMap style={{ flex: 1 }} locationEnabled={true} locationRepresentationStyle={{fillColor:processColor('red'),lineWidth:6,showsAccuracyRing:true,enablePulseAnnimation:true,image:'https://avatars3.githubusercontent.com/u/19301145?s=460&v=4'}}/>
}
