//
//  BaseViewController.swift.swift
//  currency-board
//

import UIKit

@objc protocol NavigationProtocol {
    @objc var navTitle: String { get }
    @objc func setupNavigationBar()
}

class BaseViewController: UIViewController {
    
    /*
     We can use this base controller, if we need to perform any generic actions for through out the ViewControllers/Screens.
     */
    
    //MARK:- <ViewController Lifecycle delegates>
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.navTitle
        self.navigationBarSetup()
        // Do any additional setup after loading the view.
    }
    
    func navigationBarSetup() {
        let navigationBar = navigationController?.navigationBar
        navigationBar?.isTranslucent = false
        navigationBar?.tintColor = .white
    }
}

//MARK:- BaseViewController's Extension
extension BaseViewController: NavigationProtocol {
    var navTitle: String {
        return ""
    }
    
    //MARK:- Navigation Bar Configuration
    //Children can override optionally
    func setupNavigationBar() {
        //To Remove title Text in back barButtonItem
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
