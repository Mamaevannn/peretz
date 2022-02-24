//
//  menuCell.swift
//  peretz
//
//  Created by Наида Мамаева on 10.02.2022.
//

import UIKit
import SDWebImage

class MenuCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var newLabel: UILabel!
    
    
    
//
    var id = 0
    let defaults = UserDefaults.standard
    var amount = 0

  func showHide(_ action: Bool){
    minusButton.isHidden = action
    amountLabel.isHidden = action
}

func saveCount(_ countDish: Int) {
    amountLabel.text = String(countDish)
    defaults.set(countDish, forKey: String(id))
}

    func configure(with menu: Menu) {
        if menu.new == false {
                      newLabel.isHidden = true
                  } else {
                      newLabel.isHidden = false
        
                  }
//        minusButton.isHidden = true
//        amountLabel.isHidden = true
        self.amountLabel.text = String(amount)
        self.id = menu.id
        self.nameLabel.text = menu.name
        self.descriptionLabel.text = menu.description
        self.priceLabel.text = "\(menu.price) ₽"
        
        imageIcon.sd_setImage(with: URL(string: menu.image),
                              placeholderImage: UIImage(systemName: "photo"),
                              options:.continueInBackground,
                              completed: nil)
        
        if defaults.integer(forKey: String(id))  > 0 {
            self.amountLabel.text = String(defaults.integer(forKey: String(id)))
            amount = defaults.integer(forKey: String(id))
            showHide(false)
        } else {
            showHide(true)
        }
    }
    
    func incDec(_ incDec: Bool) {
        if (incDec) {
            amount = amount + 1
        } else {
            amount = amount - 1
        }
    }
    
    @IBAction func addOne(_ sender: UIButton) {
//        minusButton.isHidden = false
//        amountLabel.isHidden = false
//        value = value+1
//        amountLabel.text = "\(value)"
        incDec(true)
        saveCount(amount)
        if amount > 0 {
        showHide(false)
        }

   
    }
    
    @IBAction func minusOne(_ sender: UIButton) {
//        value = value-1
//        amountLabel.text = "\(value)"
//        if value <= 0 {
//            minusButton.isHidden = true
//            amountLabel.isHidden = true
//
        incDec(false)
        saveCount(amount)
        if amount == 0 {
            showHide(true)
        }
//        }
    }
    
    

}


