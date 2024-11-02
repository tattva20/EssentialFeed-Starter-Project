//
//  SharedTestHelpers.swift
//  EssentialFeed
//
//  Created by Octavio Rojas on 02/11/24.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}
