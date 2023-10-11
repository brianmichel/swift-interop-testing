#if os(Windows)
import WinSDK
#endif

#if os(Windows)
public typealias WIID = IID
#else
public typealias WIID = String
#endif