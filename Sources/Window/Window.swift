import Foundation
@_spi(WinInternal) @_spi(WinImplements) import WindowsFoundation

open class Window: UnsealedWindowClass {
    public init() {}

    public func open() {
        print("Opening Window...")
    }

    open func queryInterface(_: String) -> Data? {
        WindowsFoundation.queryInterface(unsealed: self, 23)
    }
}
