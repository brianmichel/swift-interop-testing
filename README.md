# Swift Interop Broken Testing Repo

This repo is (hopefully) going to be a test case for C++ interop in Swift 5.9's toolchain that helps us find breakage.

## Building

1. Run `swift build`

## Expected Results

You will see the following errors after building:

```
Building for debugging...
error: emit-module command failed with exit code 1 (use -v to see invocation)
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:6:32: error: cannot find type 'IID' in scope
    func queryInterface(_ iid: IID) -> Data?
                               ^~~
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:10:63: error: cannot find type 'IID' in scope
public func queryInterface(sealed obj: AnyWindowClass, _ iid: IID) -> Data? {
                                                              ^~~
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:17:39: error: cannot find type 'IID' in scope
    public func queryInterface(_ iid: IID) -> Data? {
                                      ^~~
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:25:39: error: cannot find type 'IID' in scope
    public func queryInterface(_ iid: IID) -> Data? {
                                      ^~~
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:31:73: error: cannot find type 'IID' in scope
public func queryInterface(unsealed obj: AnyUnsealedWindowClass, _ iid: IID) -> Data? {
                                                                        ^~~
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:6:32: error: cannot find type 'IID' in scope
    func queryInterface(_ iid: IID) -> Data?
                               ^~~
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:10:63: error: cannot find type 'IID' in scope
public func queryInterface(sealed obj: AnyWindowClass, _ iid: IID) -> Data? {
                                                              ^~~
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:17:39: error: cannot find type 'IID' in scope
    public func queryInterface(_ iid: IID) -> Data? {
                                      ^~~
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:25:39: error: cannot find type 'IID' in scope
    public func queryInterface(_ iid: IID) -> Data? {
                                      ^~~
C:\Users\brian\Development\swift-interop-testing\Sources\WindowsFoundation\QueryInterfaces.swift:31:73: error: cannot find type 'IID' in scope
public func queryInterface(unsealed obj: AnyUnsealedWindowClass, _ iid: IID) -> Data? {
```
## Discussion

It seems that for whatever reason the `WinSDK.IID` type is unavailable when the interop mode is set for C++ interop.