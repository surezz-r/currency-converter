//
//  currency_boardTests.swift
//  currency-boardTests
//

import XCTest
@testable import currency_board

class currency_boardTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testFetchLiveStubData() {
        let productsDictionary = CountryStubFetcher.fetchCurrencyLiveStub()
        
        XCTAssertNotNil(productsDictionary, "Live Stub Data is not found")
    }
    
    func testFetchListStubData() {
        let productsDictionary = CountryStubFetcher.fetchCurrencyListStub()
        
        XCTAssertNotNil(productsDictionary, "List Stub Data is not found")
    }
    
    func testQuotesStubData() {
        let liveStub = CountryStubFetcher.fetchCurrencyLiveStub()
        if let quotes = liveStub["quotes"] as? [String: Any] {
            XCTAssertNotNil(quotes, "Currency Live Data not found in Stub Data")
            XCTAssertTrue(quotes.count > 0)
        }
    }
    
    func testCurrenciesStubData() {
        let list = CountryStubFetcher.fetchCurrencyListStub()
        if let currencies = list["currencies"] as? [String: Any], currencies.count > 0 {
            XCTAssertNotNil(currencies, "Currency List Data not found in Stub Data")
            XCTAssertTrue(currencies.count > 0)
        }
    }
    
}
