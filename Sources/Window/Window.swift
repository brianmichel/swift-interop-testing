import Foundation
import WindowsFoundation
#if os(Windows)
import WinSDK
#endif
open class Window: CustomQueryInterface {
    public init() {}
    open func queryInterface(_ iid: WIID) -> Data? {
        return nil
    }
}
