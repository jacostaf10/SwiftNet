//
//  URLRequest.swift
//  SwiftNet
//
//  Created by Jorge Acosta Freire on 14/9/24.
//

import Foundation

public extension URLRequest {
    static func get(_ url: URL, parameters: [URLQueryItem]) -> Self {
        var request = URLRequest(url: url.appending(queryItems: parameters))
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpMethod = "GET"
        return request
    }
}
