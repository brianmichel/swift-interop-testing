import CustomWindow
#if os(Windows)
import WinSDK
#endif
import WindowsFoundation

let window = CustomWindow()
_ = window.queryInterface(WIID())
