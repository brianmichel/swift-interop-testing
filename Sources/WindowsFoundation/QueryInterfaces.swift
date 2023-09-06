import Foundation
import CxxLibrary
import WinSDK

public protocol CustomQueryInterface {
    @_spi(WinImplements)
    func queryInterface(_ iid: IID) -> Data?
}

@_spi(WinInternal)
public func queryInterface(sealed obj: AnyWindowClass, _ iid: IID) -> Data? {
    one()
    return nil
}

extension WindowClass {
    @_spi(WinInternal)
    public func queryInterface(_ iid: IID) -> Data? {
        two()
        return WindowsFoundation.queryInterface(sealed: self, iid)
    }
}

extension UnsealedWindowClass {
    @_spi(WinInternal)
    public func queryInterface(_ iid: IID) -> Data? {
        WindowsFoundation.queryInterface(unsealed: self, iid)
    }
}

@_spi(WinInternal)
public func queryInterface(unsealed obj: AnyUnsealedWindowClass, _ iid: IID) -> Data? {
    return nil
}
