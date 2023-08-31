import Foundation

public protocol CustomQueryInterface {
    @_spi(WinImplements)
    func queryInterface(_ iid: String) -> Data?
}

@_spi(WinInternal)
public func queryInterface(sealed obj: AnyWindowClass, _ iid: String) -> Data? {
    return nil
}

extension WindowClass {
    @_spi(WinInternal)
    public func queryInterface(_ iid: String) -> Data? {
        WindowsFoundation.queryInterface(sealed: self, iid)
    }
}

extension UnsealedWindowClass {
    @_spi(WinInternal)
    public func queryInterface(_ iid: String) -> Data? {
        WindowsFoundation.queryInterface(unsealed: self, iid)
    }
}

@_spi(WinInternal)
public func queryInterface(unsealed obj: AnyUnsealedWindowClass, _ iid: String) -> Data? {
    return nil
}
