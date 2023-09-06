import Foundation
import CxxLibrary

public protocol CustomQueryInterface {
    @_spi(WinImplements)
    func queryInterface(_ iid: IDD) -> Data?
}

@_spi(WinInternal)
public func queryInterface(sealed obj: AnyWindowClass, _ iid: IDD) -> Data? {
    one()
    return nil
}

extension WindowClass {
    @_spi(WinInternal)
    public func queryInterface(_ iid: IDD) -> Data? {
        two()
        return WindowsFoundation.queryInterface(sealed: self, iid)
    }
}

extension UnsealedWindowClass {
    @_spi(WinInternal)
    public func queryInterface(_ iid: IDD) -> Data? {
        WindowsFoundation.queryInterface(unsealed: self, iid)
    }
}

@_spi(WinInternal)
public func queryInterface(unsealed obj: AnyUnsealedWindowClass, _ iid: IDD) -> Data? {
    return nil
}
