# Vinger
A simple library which shows your fingers on the screen, helps with demo's and presentations so people actually have a clue where you are tapping.

All you have to do is import Vinger and replace your window with the class from this library like so:

```swift
import Vinger

window = TouchWindow()
window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
```

Unfortunately as is this is the only way to have a custom class on your window and thus you need to re set the rootViewController. Make sure to check if your storyboard is named "Main" or something different.

When you run the project you should see orange representations right under your fingers on the screen, to customize this view all you need to do is create a subclass of TouchView like this:

```swift

public class DoubleCircleTouchView: TouchView {

  override init(frame: CGRect) {
    super.init(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
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
```

Override the remove method to for example animate your view away instead of having it removed instantly.

Once you have this class all you need to do is set it on the TouchWindow class like this:

```swift

window.touchViewClass = DoubleCircleTouchView.self

```

Be gone questions like 'wait where did you tap just now?' \o/



Installation
------------

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.
You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Vinger into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'Vinger'
```

Then, run the following command:

```bash
$ pod install
```
