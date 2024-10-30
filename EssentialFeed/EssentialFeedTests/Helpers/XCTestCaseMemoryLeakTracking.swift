//
//  XCTestCaseMemoryLeakTracking.swift
//  EssentialFeed
//
//  Created by Octavio Rojas on 10/18/24.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak", file: #filePath, line: #line)
        }
    }
}
