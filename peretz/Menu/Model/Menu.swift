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
    var date: String
    var name: String
    var description: String
    var new: Bool
    var variations: Array<Any>
    var price: Int
//    var image_app: String
//    var image: String
//    var sort: Int

    
    // failable initializer (проваливающийся инициализатор) - ИЗУЧИТЬ!
    init?(dict: [String: AnyObject]) {
        guard let id = dict["id"] as? Int,
              let date = dict["date"] as? String,
              let name =  dict["name"] as? String,
              let description =  dict["description"] as? String,
              let new =  dict["new"] as? Bool,
              let variations =  dict["variations"] as? Array<Any>,
              let price =  dict["price"] as? Int
//              let image_app =  dict["image_app"] as? String,
//              let image =  dict["image"] as? String,
//              let sort =  dict["500"] as? Int
        else { return nil}
        
        self.id = id
        self.date = date
        self.name = name
        self.description = description
        self.new = new
        self.variations = variations
        self.price = price
//        self.image_app = image_app
//        self.image = image
//        self.sort = sort
    }

}
