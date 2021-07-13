//
//  TableViewBaseDataSource.swift
//  currency-board
//

import UIKit

class TableViewBaseDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    //UI Elements
    public weak var tableView : UITableView!
    
    //MARK: Initialisation
    init(_ tableView_: UITableView) {
        self.tableView = tableView_
    }

    //MARK:- <UITableView DataSource>
    func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
