import Foundation
import WindowsFoundation
import WinSDK

open class Window: CustomQueryInterface {
    public init() {}
    open func queryInterface(_ iid: IID) -> Data? {
        return nil
    }
}
