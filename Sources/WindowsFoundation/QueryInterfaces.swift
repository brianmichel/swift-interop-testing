import Foundation
import CxxLibrary
import WinSDK

public protocol CustomQueryInterface {
    @_spi(WinImplements)
    func queryInterface(_ iid: WinSDK.IID) -> Data?
}

@_spi(WinInternal)
public func queryInterface(sealed obj: AnyWindowClass, _ iid: WinSDK.IID) -> Data? {
    one()
    return nil
}

extension WindowClass {
    @_spi(WinInternal)
    public func queryInterface(_ iid: WinSDK.IID) -> Data? {
        two()
        return WindowsFoundation.queryInterface(sealed: self, iid)
    }
}

extension UnsealedWindowClass {
    @_spi(WinInternal)
    public func queryInterface(_ iid: WinSDK.IID) -> Data? {
        WindowsFoundation.queryInterface(unsealed: self, iid)
    }
}

@_spi(WinInternal)
public func queryInterface(unsealed obj: AnyUnsealedWindowClass, _ iid: WinSDK.IID) -> Data? {
    return nil
}
