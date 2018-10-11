//
//  TBGradientButton.swift
//  ToolBox
//
//  Created by Berthelot Nicolas on 13/10/2017.
//

import Foundation

final class TBGradientButton: UIButton {
  
  @IBInspectable public var startColor: UIColor = UIColor.clear {
    didSet {
      updateColor()
    }
  }
  
  @IBInspectable public var endColor: UIColor = UIColor.clear  {
    didSet {
      updateColor()
    }
  }
  
  var gradientLayer: CAGradientLayer {
    return layer as! CAGradientLayer
  }
  
  @IBInspectable public var isVertical: Bool = true
  
  public override class var layerClass : AnyClass {
    return CAGradientLayer.self
  }
  
  fileprivate func updateColor() {
    gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
    if isVertical == false {
      gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
      gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
    }
  }
  
}
