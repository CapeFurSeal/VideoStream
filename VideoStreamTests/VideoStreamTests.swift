//
//  VideoStreamTests.swift
//  VideoStreamTests
//
//  Created by Blake Loizides on 9/13/20.
//
import XCTest
@testable import VideoStream

class VideoStreamTests: XCTestCase {
    
    var productListViewModel: VideoStreamViewModel?
    
    func test_videoStreamViewModel() {
        let viewModel = VideoStreamViewModel()
        let expectation = XCTestExpectation()
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            XCTAssertNotNil(viewModel.getVideoStreams())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }
}

