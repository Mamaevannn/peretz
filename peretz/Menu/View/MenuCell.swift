//
//  menuCell.swift
//  peretz
//
//  Created by Наида Мамаева on 10.02.2022.
//

import UIKit
import SDWebImage

class MenuCell: UITableViewCell {
    
var value = 0
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var newLabel: UILabel!
    
    
    
//
//    var id = 0
//    var amount = 0
//    let defaults = UserDefaults.standard
////
//  func showHide(_ action: Bool){
//    minusButton.isHidden = action
//    amountLabel.isHidden = action
//}
//
//func saveCount(_ countDish: Int) {
//    amountLabel.text = String(countDish)
//    defaults.set(countDish, forKey: String(id))
//}

    func configure(with menu: Menu) {
        if menu.new == false {
                      newLabel.isHidden = true
                  } else {
                      newLabel.isHidden = false
        
                  }
        minusButton.isHidden = true
        amountLabel.isHidden = true
        self.nameLabel.text = menu.name
        self.descriptionLabel.text = menu.description
        self.priceLabel.text = "\(menu.price) ₽"
        
        imageIcon.sd_setImage(with: URL(string: menu.image),
                              placeholderImage: UIImage(systemName: "photo"),
                              options:.continueInBackground,
                              completed: nil)
        
//        if defaults.integer(forKey: String(id))  > 0 {
//            self.amountLabel.text = String(defaults.integer(forKey: String(id)))
//            amount = defaults.integer(forKey: String(id))
//            showHide(false)
//        } else {
//            showHide(true)
//        }
    }
    
    @IBAction func addOne(_ sender: Any) {
        minusButton.isHidden = false
        amountLabel.isHidden = false
        value = value+1
        amountLabel.text = "\(value)"

   
    }
    
    @IBAction func minusOne(_ sender: Any) {
        value = value-1
        amountLabel.text = "\(value)"
        if value <= 0 {
            minusButton.isHidden = true
            amountLabel.isHidden = true

        }
    }
    
    

}


