//
//  GetMenuResponse.swift
//  peretz
//
//  Created by Наида Мамаева on 10.02.2022.
//

import Foundation

struct GetMenuResponse {
    
    // замена для удобства
    typealias JSON = [[String: AnyObject]]
    let menuPlural: [Menu]
    
    init(json: Any) throws {
        guard let array = json as? JSON else { throw NetworkError.failInternetError}
        
        var menuPlural = [Menu]()
        for dictionary in array {
            guard let menu = Menu(dict: dictionary) else { continue }
            menuPlural.append(menu)
        }
        self.menuPlural = menuPlural
        
    }
}

