import Foundation
@_spi(WinInternal) @_spi(WinImplements) import WindowsFoundation
import WinSDK

open class Window: UnsealedWindowClass {
    public init() {}

    public func open() {
        print("Opening Window...")
    }

    open func queryInterface(iid: IID) -> Data? {
        WindowsFoundation.queryInterface(unsealed: self, iid)
    }
}
