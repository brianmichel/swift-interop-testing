import Foundation
import Window
import WindowsFoundation
#if os(Windows)
import WinSDK
#endif

public class CustomWindow: Window {
  public override init() {
    super.init()
  }

  override public func queryInterface(_ iid: WIID) -> Data? {
    super.queryInterface(iid)
  }
}