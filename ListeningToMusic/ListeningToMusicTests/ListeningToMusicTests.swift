//
//  ListeningToMusicTests.swift
//  ListeningToMusicTests
//
//  Created by Xin Li on 11/17/17.
//  Copyright © 2017 Xin Li. All rights reserved.
//

import XCTest
@testable import ListeningToMusic

class ListeningToMusicTests: XCTestCase {
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    //MARK: Song Class Tests
    // Confirm that the Song initializer returns a Song object when passed valid parameters.
    func testSongInitializationSucceeds() {
        // Zero rating
        let zeroRatingSong = Song.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingSong)
        
        // Highest positive rating
        let positiveRatingSong = Song.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingSong)
    }
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testSongInitializationFails() {
        // Negative rating
        let negativeRatingSong = Song.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingSong)
        
        // Rating exceeds maximum
        let largeRatingSong = Song.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingSong)
        
        // Empty String
        let emptyStringSong = Song.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringSong)
    }
}
