import Foundation
import WinSDK

public protocol CustomQueryInterface {
    func queryInterface(_ iid: IID) -> Data?
}
