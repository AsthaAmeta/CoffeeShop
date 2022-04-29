//
//  ViewController.swift
//  SNInterview
//
//  Copyright © 2019 ServiceNow. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let identifier = "CoffeeCell"
    @IBOutlet weak var tableView: UITableView!
    let coffeeShopData = DataLoader().coffeeShop
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(coffeeShopData)
        let nib = UINib(nibName: "CoffeeShopTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: identifier)
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffeeShopData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rating = coffeeShopData[indexPath.row].rating
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! CoffeeShopTableViewCell
        cell.nameLabel.text = coffeeShopData[indexPath.row].name
      //  cell.nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        cell.reviewLabel.text = "\(coffeeShopData[indexPath.row].review)"
        cell.ratingLabel.text = "Rating: \(rating)"
       // cell.ratingLabel.font = UIFont.boldSystemFont(ofSize: 18)
        cell.ratingImageView.image = UIImage(named: "star-\(rating)")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Review", message: "\(coffeeShopData[indexPath.row].review)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}
