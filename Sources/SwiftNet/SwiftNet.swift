// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public func get<T: Codable>(_ url: URL, of type: T.Type, parameters: [URLQueryItem] = [], decoder: JSONDecoder = .iso8601()) async throws -> T {
    let (data, response) = try await URLSession.shared.data(for: url, parameters: parameters)
    guard let httpResponse = response as? HTTPURLResponse else { throw NetworkError.invalidResponse }
    guard httpResponse.statusCode == 200 else { throw NetworkError.status(httpResponse.statusCode) }
    
    do {
        return try decoder.decode(T.self, from: data)
    } catch {
        throw NetworkError.invalidData
    }
}
