public typealias AnyWindowClass = any WindowClass
public typealias AnyUnsealedWindowClass = any UnsealedWindowClass

public protocol WindowClass: CustomQueryInterface {}

public protocol UnsealedWindowClass: WindowClass {}