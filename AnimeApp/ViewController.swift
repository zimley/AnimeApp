//
//  ViewController.swift
//  AnimeApp
//
//  Created by Zim on 6/4/21.
//

import UIKit

class ResultsVC: UIViewController {
    
    func Viewdidlaod() {
    super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemGray,
            UIColor.systemYellow.cgColor,
        ]
        view.layer.addSublayer(gradientLayer)
        
    

    }
}
class ViewController: UIViewController, UISearchResultsUpdating {
     
    let searchController = UISearchController(searchResultsController:nil )

        
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        
        
        
        

        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController

        let network = Networking()
        network.searchForAnimesWithName(AnimeName: "horse")
    }
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        print(text)
    }
}

