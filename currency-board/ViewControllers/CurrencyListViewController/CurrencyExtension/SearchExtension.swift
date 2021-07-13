//
//  SearchExtension.swift
//  currency-board
//

import Foundation
import UIKit

//MARK:- <UISearchBarDelegate>
extension CurrencyListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let searchString = searchText.trimWhiteSpace()
        var filterData: [CountryListModel]?
        if searchString != "", searchString.count > 0 {
            filterData = self.countryListData?.filter {
                return $0.countryName?.range(of: searchString, options: .caseInsensitive) != nil
            }
        } else {
            filterData = self.countryListData
        }
        DispatchQueue.main.async { [weak self] in
            if let strongSelf = self {
                strongSelf.countryListDS?.countryListModel = filterData
                strongSelf.tableView.reloadData()
            }
        }
    }
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
}
