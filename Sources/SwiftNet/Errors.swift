//
//  Errors.swift
//  SwiftNet
//
//  Created by Jorge Acosta Freire on 14/9/24.
//

import Foundation

public enum NetworkError: Error {
    case general(Error)
    case invalidURL
    case invalidResponse
    case invalidData
    case status(Int)
}
