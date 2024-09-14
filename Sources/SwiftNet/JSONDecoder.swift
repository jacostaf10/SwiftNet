//
//  JSONDecoder.swift
//  SwiftNet
//
//  Created by Jorge Acosta Freire on 14/9/24.
//

import Foundation

public extension JSONDecoder {
    static func iso8601() -> JSONDecoder {
        var decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }
}
