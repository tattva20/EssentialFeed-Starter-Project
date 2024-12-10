//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Octavio Rojas on 09/12/24.
//

//
//  Copyright © 2019 Essential Developer. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
