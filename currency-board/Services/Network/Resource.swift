//
//  Resource.swift
//  ContactsApp
//

import Foundation

struct Resource<T: Decodable> {
    enum MethodType: String {
        case GET, POST, PUT
    }
    let url: URL
    let parameters: [String: CustomStringConvertible]
    let headers: [String: String]
    let body: Data?
    let methodType: String
    var request: URLRequest? {
        guard var components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
            return nil
        }
        components.queryItems = parameters.keys.map { key in
            URLQueryItem(name: key, value: parameters[key]?.description)
        }
        guard let url = components.url else {
            return nil
        }
        var request = URLRequest(url: url)
        if let httpBody = body {
            request.httpBody = httpBody
        }
        headers.forEach { (key, value) in
            request.addValue(headers[key] ?? "", forHTTPHeaderField: key)
        }
        request.httpMethod = methodType
        return request
    }

    init(url: URL, parameters: [String: CustomStringConvertible] = [:], headers: [String: String] = [:], body: Data? = nil, methodType: MethodType = .GET) {
        self.url = url
        self.parameters = parameters
        self.headers = headers
        self.body = body
        self.methodType = methodType.rawValue
    }
}
