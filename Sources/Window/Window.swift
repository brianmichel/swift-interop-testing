import Foundation
@_spi(WinInternal) @_spi(WinImplements) import WindowsFoundation

open class Window: CustomQueryInterface {
    public init() {}

    public func open() {
        print("Opening Window...")
    }

    public func queryInterface(_: String) -> Data? {
        print("Calling the query interface")
        return nil
    }
}
