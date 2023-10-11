import Foundation
#if os(Windows)
import WinSDK
#endif

public protocol CustomQueryInterface {
    func queryInterface(_ iid: WIID) -> Data?
}
