//
//  CurrencyDBViewModel.swift
//  currency-board
//

import UIKit
import CoreData

class CurrencyDBViewModel: NSObject {
    
    //Constant
    private let CountryInfoEntity = "CountryListDataModel"
    
    //Keys
    private let kCountryCode = "countryCode"
    private let kCountryImage = "countryImage"
    private let kCountryName = "countryName"
    private let kCurrencyValue = "currencyValue"
    private let kUSDValue = "usd"
    
    //MARK:- Singleton
    static let shared = CurrencyDBViewModel()
    private let context = CoreDataManager.sharedInstance.secondaryContext
    
    //Properties
    var countryListModel = [CountryListModel]()
    
    typealias completion = (_ status: Bool?) -> Void
    typealias readDBCompletion = (_ countryListModel: [CountryListModel], _ status: Bool?) -> Void
    
    //MARK:- <Perform CRUD operations>
    //MARK:- CREATE
    func saveCountryInfo(_ countryListModel: [CountryListModel], completion: @escaping completion) -> Void {
        self.deleteCountryList() //To Delete existing data
        for countryModel in countryListModel {
            let country = NSEntityDescription.insertNewObject(forEntityName: self.CountryInfoEntity , into: self.context)
            country.setValue(countryModel.countryCode, forKey: self.kCountryCode)
            country.setValue(countryModel.countryName, forKey: self.kCountryName)
            country.setValue(countryModel.countryCurrencyValue, forKey: self.kCurrencyValue)
            country.setValue(self.covertImageToData(countryModel.countryLogo!), forKey: self.kCountryImage)
        }
        do {
            try self.context.save()
            completion(true)
            print("Saved successfully!")    
        } catch {
            completion(false)
            print("Can't save")
        }
    }
    
    
    //MARK:- READ
    func fetchCountryInfo() -> [CountryListModel] {
        var countryInfoList = [CountryListModel]()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: CountryInfoEntity)
        request.returnsObjectsAsFaults = false
        do {
            let results = try context.fetch(request)
            if let countries = results as? [CountryListDataModel] {
                for country in countries {
                    let countryInfo = CountryListModel()
                    
                    countryInfo.countryName = country.countryName
                    countryInfo.countryCode = country.countryCode
                    countryInfo.countryCurrencyValue = country.currencyValue
                    countryInfo.countryLogo = self.convertDataToImage(country.countryImage ?? Data())
                    
                    countryInfoList.append(countryInfo)
                }
                countryInfoList = countryInfoList.sorted {
                    var isSorted = false
                    if let first = $0.countryName, let second = $1.countryName {
                        isSorted = first < second
                    }
                    return isSorted
                }
            }
        } catch {
            print("Error while fetching")
        }
        return countryInfoList
    }
    
    //MARK:- TODO:: UPDATE
    
    
    //MARK:- DELETE
    func deleteCountryList() {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: CountryInfoEntity)
        if let results = try? context.fetch(fetchRequest) {
            if results.count > 0 {
                for object in results {
                    context.delete(object as! NSManagedObject)
                    do {
                        try context.save()
                    }
                    catch {
                        print("Can't delete") // Should handle error case, If any
                    }
                }
            }
        }
    }
    
    //MARK:- <HelperDelegates>
    func covertImageToData(_ image: UIImage) -> Data {
        var data: Data?
        
        if let cgImage = image.cgImage, cgImage.renderingIntent == .defaultIntent {
            data = image.jpegData(compressionQuality: 0.8)
        }
        else {
            data = image.pngData()
        }
        return data ?? Data()
    }
    
    func convertDataToImage(_ data: Data) -> UIImage {
        if let image = UIImage(data: data) {
            return image
        }
        return UIImage()
    }
    
}
