//
//  URLSession.swift
//  SwiftNet
//
//  Created by Jorge Acosta Freire on 14/9/24.
//

import Foundation

public extension URLSession {
    func data(for url: URL, parameters: [URLQueryItem]) async throws -> (Data, URLResponse) {
        do {
            return try await data(for: .get(url, parameters: parameters))
        } catch {
            throw NetworkError.general(error)
        }
    }
}
