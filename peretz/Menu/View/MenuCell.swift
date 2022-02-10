//
//  menuCell.swift
//  peretz
//
//  Created by Наида Мамаева on 10.02.2022.
//

import UIKit

class MenuCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!

    func configure(with menu: Menu) {
        self.nameLabel.text = menu.name
        self.descriptionTextView.text = menu.description
    }
}
