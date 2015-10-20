//
//  TouchView.swift
//  vinger
//
//  Created by Benjamin de Jager on 19/10/15.
//  Copyright © 2015 Benjamin de Jager. All rights reserved.
//

import UIKit

public class TouchView : UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    backgroundColor = UIColor.clearColor()
  }

  required public init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  public func remove() { // override me without calling super to do animations
    removeFromSuperview()
  }
}
