//
//  MenuNetworkService.swift
//  peretz
//
//  Created by Наида Мамаева on 10.02.2022.
//

import Foundation

class MenutNerworkService {
    private init() {}
    
    static func getMenu(completion: @escaping(GetMenuResponse) -> ()) {
        guard let url = URL(string: "https://islam-404.github.io/alic/db/airpods.json") else {return}
        
        NetworkService.shared.getData(url: url) { (json) in
            do  {
                let response = try GetMenuResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }

    func getAllImagesOfFood(for url: String) async throws -> UIImage? {
        guard let url = URL(string: url) else { return nil }
        let (data, _) = try await URLSession.shared.data(from: url)
        let image = UIImage(data: data)
        return image
        }
}

