//
//  ViewController.swift
//  peretz
//
//  Created by Наида Мамаева on 08.02.2022.
//

import UIKit


class MenuViewController: UIViewController {

  
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
extension MenuViewController: UITableViewDelegate {}
extension MenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        return cell
    }
}

