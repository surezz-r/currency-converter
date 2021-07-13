//
//  CurrencyNameBaseModel.swift
//  currency-board
//

import Foundation

struct CurrencyNameBaseModel : Codable {
    
	let success : Bool?
	let terms : String?
	let privacy : String?
	let currencies : CurrencyNameModel?

	enum CodingKeys: String, CodingKey {

		case success = "success"
		case terms = "terms"
		case privacy = "privacy"
		case currencies = "currencies"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		success = try values.decodeIfPresent(Bool.self, forKey: .success)
		terms = try values.decodeIfPresent(String.self, forKey: .terms)
		privacy = try values.decodeIfPresent(String.self, forKey: .privacy)
		currencies = try values.decodeIfPresent(CurrencyNameModel.self, forKey: .currencies)
	}

}
