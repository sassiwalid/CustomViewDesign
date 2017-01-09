//
//  UIViewExtension.swift
//  CustomView
//
//  Created by Walid Sassi on 09/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import UIKit
@IBDesignable class DesignableImageView : UIImageView{}
@IBDesignable class DesignableButton : UIButton{}
@IBDesignable class DesignableTextField : UITextField {}
// the idea is to access directly to the attributes of layer by the view. So it's necessary to extend 
// the UIView by addinf this attributes borderWidth, borderColor etc...
extension UIView{
  @IBInspectable
  var borderWidth:CGFloat{
    get {
      return layer.borderWidth
    }
    set{
      layer.borderWidth = newValue
    }
  }
  @IBInspectable
  var borderColor : UIColor? {
    get {
      return layer.borderColor != nil ? UIColor(cgColor: layer.borderColor!):nil
    }
    set {
      layer.borderColor = newValue?.cgColor
    }
  }
  @IBInspectable
  var cornerRadius : CGFloat{
    get{
      return layer.cornerRadius
    }
    set {
      layer.cornerRadius = newValue
      layer.masksToBounds = newValue != 0
    }
  }
  @IBInspectable
  var makeCircular :Bool? {
    get {
      return nil
    }
    set {
      if let makeCircular = newValue, makeCircular {
        cornerRadius = min(bounds.width,bounds.height)/2.0
      }
    }
  }
  
}
