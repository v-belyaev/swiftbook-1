import Foundation

public struct AudioFile {
    public let title: String
    public let album: String?
    public let author: String
    public let lengthInSeconds: UInt
    
    /// Initializer for single-track
    public init(title: String, author: String, lengthInSeconds: UInt) {
        self.title = title
        self.author = author
        self.lengthInSeconds = lengthInSeconds
        self.album = nil
    }
    
    public init(title: String, album: String, author: String, lengthInSeconds: UInt) {
        self.title = title
        self.album = album
        self.author = author
        self.lengthInSeconds = lengthInSeconds
    }
}
