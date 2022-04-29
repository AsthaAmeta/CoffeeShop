//
//  DataLoader.swift
//  SNInterview
//
//  Created by Ameta, Astha on 29/04/22.
//  Copyright © 2022 ServiceNow. All rights reserved.
//

import Foundation

class DataLoader {
    var coffeeShop = [CoffeeShopData]()
    
    init() {
        parseData()
    }
    
    func parseData() {
        if let path = Bundle.main.url(forResource: "CoffeeShops", withExtension: "json") {
            do {
                let data = try Data(contentsOf: path)
                let dataFromJson = try JSONDecoder().decode([CoffeeShopData].self, from: data)
                self.coffeeShop = dataFromJson
            } catch {
                print(error)
            }
        }
    }
}
