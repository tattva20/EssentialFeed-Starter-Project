//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Octavio Rojas on 10/9/24.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error) -> Void)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient

    public init(url: URL, client: HTTPClient) {
        self.client = client
        self.url = url
    }
    
    public enum Error: Swift.Error {
        case connectivity
    }
    
    public func load(completion: @escaping  (Error) -> Void) {
        client.get(from: url) { error in
            completion(.connectivity)
        }
    }
}

