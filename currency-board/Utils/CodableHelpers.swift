//
//  CodableHelpers.swift
//  ContactsApp
//

import Foundation

enum CodableHelpers {
    
    /// Helper to decode Data to Codable response.
    
    static func decodeJson<T: Decodable>(data: Data) -> T? {
        var responseResult: T?
        do {
            responseResult = try JSONDecoder().decode(T.self, from: data)
        } catch let jsonErr { print(jsonErr) }
        
        return responseResult
    }
    
    /// Helper to encode JSON object to http Data object.
    /// The input also have to conform to Encodable.
    
    static func encodeJson<T: Encodable>(input: T) -> Data? {
        let jsonEncoder = JSONEncoder()
        do {
            let jsonData = try jsonEncoder.encode(input)
            return jsonData
            
        } catch let jsonErr { print(jsonErr) }
        
        return nil
    }
}
