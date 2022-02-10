//
//  Menu.swift
//  peretz
//
//  Created by Наида Мамаева on 10.02.2022.
//

import Foundation
import UIKit

struct Menu {
    
    var id: Int
    var date: Int
    var name: String
    var description: String
    var new: Bool
    var variations: String
    var price: Int
    var image_app: UIImage
    var image: UIImage
    var sort: Int

    
    // failable initializer (проваливающийся инициализатор) - ИЗУЧИТЬ!
    init?(dict: [String: AnyObject]) {
        guard let id = dict["id"] as? Int,
              let date = dict["date"] as? Int,
              let name =  dict["name"] as? String,
              let description =  dict["description"] as? String,
              let new =  dict["new"] as? Bool,
              let variations =  dict["variations"] as? String,
              let price =  dict["price"] as? Int,
              let image_app =  dict["image_app"] as? UIImage,
              let image =  dict["image"] as? UIImage,
              let sort =  dict["500"] as? Int else { return nil}
        
        self.id = id
        self.date = date
        self.name = name
        self.description = description
        self.new = new
        self.variations = variations
        self.price = price
        self.image_app = image_app
        self.image = image
        self.sort = sort
    }

}
