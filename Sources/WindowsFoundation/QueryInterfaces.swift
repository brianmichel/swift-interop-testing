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
    // guard let inner = obj._inner?.borrow ?? obj._getABI() else { return nil }
    // var iid = iid
    // var result: UnsafeMutableRawPointer?
    // guard inner.pointee.lpVtbl.pointee.QueryInterface(inner, &iid, &result) == S_OK, let result else { return nil }
    // return IUnknownRef(consuming: result)
    return nil
}
