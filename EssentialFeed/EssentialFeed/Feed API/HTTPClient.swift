//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Octavio Rojas on 10/14/24.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
