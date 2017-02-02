import XCTest
import Foundation
@testable import ex06

class ex06Tests: XCTestCase {
    func testFindExistingItem() {
        var playlist: [PlaylistItem] = [] 
        let item1 = PlaylistItem(itemUrl: URL(fileURLWithPath: "song.mp3")) 
        let item2 = PlaylistItem(itemUrl: URL(fileURLWithPath: "song.mp3")) 
        playlist.append(item1)
        XCTAssertTrue(playlist.contains(item2)) 
    }

    func testDurationAvailable() { 
        let item = PlaylistItem(itemUrl: URL(fileURLWithPath: "song.mp3"))
        XCTAssertFalse(item.durationAvailable)
        item.duration = 30
        XCTAssertTrue(item.durationAvailable)
    }

    static var allTests : [(String, (ex06Tests) -> () throws -> Void)] {
        return [
            ("testFindExistingItem", testFindExistingItem),
            ("testDurationAvailable", testDurationAvailable)
        ]
    }
}
