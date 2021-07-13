//
//  CurrencyListCell.swift
//  currency-board
//

import UIKit

class CurrencyListCell: UITableViewCell {
    
    //Outlets
    @IBOutlet weak var countryFlag: UIImageView!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var countryCode: UILabel!
    @IBOutlet weak var currencyValue: UILabel!
    
    //MARK:- <UITableViewCell delegates>
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    //MARK:- <Populating Currency Data>
    func populateData(_ country: CountryListModel) {
        self.countryName.text = country.countryName ?? ""
        self.countryCode.text = country.countryCode ?? ""
        self.currencyValue.text = country.countryCurrencyValue?.currencyFormat
        self.countryFlag.image = country.countryLogo
    }
}
