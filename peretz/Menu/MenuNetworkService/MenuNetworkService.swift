//
//  MenuNetworkService.swift
//  peretz
//
//  Created by Наида Мамаева on 10.02.2022.
//

import Foundation

class ComnmentNerworkService {
    private init() {}
    
    static func getMenu(completion: @escaping(GetMenuResponse) -> ()) {
        guard let url = URL(string: "https://peretz-group.ru/api/v2/products?category=106&key=20be9031474183ea92958d5e255d888e47bdad44afd5d7b7201d0eb572be5278") else {return}
        
        NetworkService.shared.getData(url: url) { (json) in
    
        }
    }
}
