import Foundation

final class PlaylistItem: Equatable {
    let itemUrl: URL

    var duration: TimeInterval? {
        didSet{
            // use guard let to return in case the new value is nil
            guard let duration = duration else {
                return
            }

            print("duration set to \(duration)")
        }
    }

    // stored properties can also be initialized here
    private(set) var playbackPosition: TimeInterval = 0

    var durationAvailable: Bool {
        get {
            return duration != nil
        }
    }

    init(itemUrl: URL) {
        self.itemUrl = itemUrl
    }

    public static func ==(lhs: PlaylistItem, rhs: PlaylistItem) -> Bool {
        return lhs.itemUrl == rhs.itemUrl
    }
}
