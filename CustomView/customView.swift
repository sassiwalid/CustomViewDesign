//
//  customView.swift
//  CustomView
//
//  Created by Walid Sassi on 09/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import UIKit
//live test of view in IB by using @IBDesignable
@IBDesignable
class customView: UIView {
  // override in swift3
  override class var layerClass: AnyClass {
    return CAGradientLayer.self
  }
  // convert layer to gradient layer
  var gradientLayer : CAGradientLayer{
    return layer as! CAGradientLayer
  }
  override func draw(_ rect: CGRect) {
    // draw with layer
    layer.borderWidth = 10.0
    layer.borderColor = UIColor(red:0,green:150/255, blue:200/255,alpha:0.7).cgColor
    layer.cornerRadius = 20.0
    layer.masksToBounds = true
    let startColor = UIColor(red:0,green:150/255, blue:100/255,alpha:0.7).cgColor
    let endColor = UIColor(red:0,green:150/255, blue:150/255,alpha:0.7).cgColor
    gradientLayer.colors = [startColor,endColor]
    
  }
  
  
}
