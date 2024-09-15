//
//  URLSession.swift
//  SwiftNet
//
//  Created by Jorge Acosta Freire on 14/9/24.
//

import Foundation

public extension URLSession {
    func data(for url: URL, parameters: [URLQueryItem] = [], method: HTTPMethod = .get, body: Data? = nil, headers: [String: String] = [:]) async throws -> (Data, URLResponse) {
        do {
            return try await data(for: .request(url, parameters: parameters, method: method, body: body, headers: headers))
        } catch {
            throw NetworkError.general(error)
        }
    }
}
