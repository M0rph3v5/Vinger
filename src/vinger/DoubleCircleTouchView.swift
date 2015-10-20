//
//  DoubleCircleTouchView.swift
//  vinger
//
//  Created by Benjamin de Jager on 19/10/15.
//  Copyright © 2015 Benjamin de Jager. All rights reserved.
//

import UIKit

public class DoubleCircleTouchView: TouchView {

  override init(frame: CGRect) {
    super.init(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
  }

  required public init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  public override func drawRect(rect: CGRect) {
    
    UIColor.blackColor().set()
    
    let context = UIGraphicsGetCurrentContext()
    CGContextSetLineWidth(context, 5)
    CGContextStrokeEllipseInRect(context, rect.insetBy(dx: 5, dy: 5))
    
    CGContextFillEllipseInRect(context, rect.insetBy(dx: 15, dy: 15))
  }

  public override func remove() {
    
    UIView.animateWithDuration(0.6, animations: { () -> Void in
      self.alpha = 0
      self.transform = CGAffineTransformMakeScale(1.5, 1.5)
      }) { (success) -> Void in
      self.removeFromSuperview()
    }
  }
}
