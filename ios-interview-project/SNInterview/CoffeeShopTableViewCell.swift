//
//  CoffeeShopTableViewCell.swift
//  SNInterview
//
//  Created by Ameta, Astha on 28/04/22.
//  Copyright © 2022 ServiceNow. All rights reserved.
//

import UIKit

class CoffeeShopTableViewCell: UITableViewCell {

    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
