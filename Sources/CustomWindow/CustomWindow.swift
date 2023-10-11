import Foundation
import Window
import WindowsFoundation
import WinSDK

public class CustomWindow: Window {
  public override init() {
    super.init()
  }

  override public func queryInterface(_ iid: IID) -> Data? {
    super.queryInterface(iid)
  }
}