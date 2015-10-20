//
//  Window.swift
//  vinger
//
//  Created by Benjamin de Jager on 19/10/15.
//  Copyright © 2015 Benjamin de Jager. All rights reserved.
//

import UIKit

public class TouchWindow : UIWindow {
  var touchViews: [Int:TouchView] = [:]
  var touchViewClass: TouchView.Type = DoubleCircleTouchView.self
  
  override public func sendEvent(event: UIEvent) {
    super.sendEvent(event)
    
    event.allTouches()?.forEach({ touch in
      
      let touchView = touchViews[touch.hash]
      
      switch touch.phase {
      case .Began, .Moved:
        
        var tv = touchView
        if tv == nil {
          let newTouchView = touchViewClass.init()
          addSubview(newTouchView)
          touchViews[touch.hash] = newTouchView
          tv = newTouchView
        }
        
        tv!.center = touch.locationInView(self)
      case .Ended , .Cancelled:
        removeViewForHash(touch.hash)
        break
      case .Stationary: // do nothing
        break
      }      
    })
  }
  
  private func removeViewForHash(hash: Int) {
    guard let touchView = touchViews[hash] else { return }
    touchView.remove()
    touchViews.removeValueForKey(hash)
  }
}
