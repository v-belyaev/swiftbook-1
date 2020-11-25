import Foundation

public enum OutputDeviceType {
    case headphones
    case loudspeakers
}

public protocol OutputDeviceProtocol {
    var deviceType: OutputDeviceType { get }
}

public class Headphones: OutputDeviceProtocol {
    public let deviceType: OutputDeviceType = .headphones
    
    public init() {}
}

public class Loudspeakers: OutputDeviceProtocol {
    public let deviceType: OutputDeviceType = .loudspeakers
    
    public init() {}
}
