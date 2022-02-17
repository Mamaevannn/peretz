//
//  NetworkService.swift
//  peretz
//
//  Created by Наида Мамаева on 10.02.2022.
//

import Foundation

class NetworkService {
    private init(){}
    
        static let shared = NetworkService()
        // создали singleton pattern - ИЗУЧИТЬ!
//    2222
        
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
            let session = URLSession.shared
            
            session.dataTask(with: url) { (data, response, error) in
                // проверяем, получили ли мы данные
                guard let data = data else {return}
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    DispatchQueue.main.async {
                        completion(json)
                    }
                } catch {
                    print(error)
                }
            }.resume()
        }
    
}
