//
//  CurrencyValueBaseModel.swift
//  currency-board
//

import Foundation
import Combine

struct CurrencyValueBaseModel : Codable {
    
	let success : Bool?
	let terms : String?
	let privacy : String?
	let timestamp : Int?
	let source : String?
	let quotes : CurrencyValueModel?

	enum CodingKeys: String, CodingKey {

		case success = "success"
		case terms = "terms"
		case privacy = "privacy"
		case timestamp = "timestamp"
		case source = "source"
		case quotes = "quotes"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		success = try values.decodeIfPresent(Bool.self, forKey: .success)
		terms = try values.decodeIfPresent(String.self, forKey: .terms)
		privacy = try values.decodeIfPresent(String.self, forKey: .privacy)
		timestamp = try values.decodeIfPresent(Int.self, forKey: .timestamp)
		source = try values.decodeIfPresent(String.self, forKey: .source)
		quotes = try values.decodeIfPresent(CurrencyValueModel.self, forKey: .quotes)
	}

}
