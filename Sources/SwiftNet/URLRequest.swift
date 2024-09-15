//
//  URLRequest.swift
//  SwiftNet
//
//  Created by Jorge Acosta Freire on 14/9/24.
//

import Foundation

public extension URLRequest {
    static func request(_ url: URL, parameters: [URLQueryItem], method: HTTPMethod, body: Data?, headers: [String: String]) -> Self {
        var request = URLRequest(url: url.appending(queryItems: parameters))
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpMethod = method.rawValue
        request.httpBody = body
        
        if !headers.isEmpty {
            for (key, value) in headers {
                request.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        return request
    }
}

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}
