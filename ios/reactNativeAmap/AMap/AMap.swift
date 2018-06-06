//
//  File.swift
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/5/24.
//  Copyright © 2018年 Facebook. All rights reserved.
//

import UIKit

@objc (AMapManager)
class AMapManager: RCTViewManager {
  
  override func view() -> UIView! {
    let MapView = MapViewController();
    return MapView.view
  }
}
class MyLabelView: UILabel {
  
  private var _myText:String?
  var myText: String? {
    set {
      _myText = newValue
      self.text = newValue
    }
    get {
      return _myText
    }
  }
}
class MapViewController: UIViewController, MAMapViewDelegate {
  
  var mapView: MAMapView!
  //var search: AMapSearchAPI!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.title = "Swift Demo"
    
    AMapServices.shared().apiKey = "c519d8abf91165204f13aece32dc4e16"
    AMapServices.shared().enableHTTPS = true
    initMapView()
    //initSearch()
  }
  
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    mapView.showsUserLocation = true
    mapView.userTrackingMode = MAUserTrackingMode.follow
  }
  
  
  func initMapView() {
    
    mapView = MAMapView(frame: self.view.bounds)
    mapView.delegate = self as! MAMapViewDelegate
    mapView.showsUserLocation = true
    mapView.userTrackingMode = .follow
    self.view.addSubview(mapView!)
  }
  
  func addCustomPoint(){
    let pointAnnotation = MAPointAnnotation()
    pointAnnotation.coordinate = CLLocationCoordinate2D(latitude: 39.979590, longitude: 116.352792)
    pointAnnotation.title = "方恒国际"
    pointAnnotation.subtitle = "阜通东大街6号"
    mapView.addAnnotation(pointAnnotation)
  }
  
//  func initSearch() {
//    //        AMap
//    search = AMapSearchAPI()
//    search.delegate = self as! AMapSearchDelegate
//  }
  
}
