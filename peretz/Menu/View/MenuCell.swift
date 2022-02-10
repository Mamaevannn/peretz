//
//  menuCell.swift
//  peretz
//
//  Created by Наида Мамаева on 10.02.2022.
//

import UIKit

class MenuCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
//    @IBOutlet weak var imageIcon: UIImageView!
    
    func configure(with menu: Menu) {
        self.nameLabel.text = menu.name
        self.descriptionLabel.text = menu.description
        self.priceLabel.text = "\(menu.price) ₽"
//        self.imageIcon.image = image
    }
}
