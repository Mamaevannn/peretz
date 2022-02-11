//
//  ViewController.swift
//  peretz
//
//  Created by Наида Мамаева on 08.02.2022.
//

import UIKit


class MenuViewController: UIViewController {

  
    @IBOutlet weak var tableView: UITableView!
    var menuPlural = [Menu]()
    var images: [UIImage?] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MenutNerworkService.getMenu { (response) in
            self.menuPlural = response.menuPlural
            self.tableView.reloadData()
        }
            
    }

}
extension MenuViewController: UITableViewDelegate {}
extension MenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuPlural.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuCell
        let menu = menuPlural[indexPath.row]
        let image = images[indexPath.row]
        cell.configure(with: menu, andWith: image!)
        return cell 
    }
}



