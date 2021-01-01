//
//  NetworkService.swift
//  MVC-N
//
//  Created by wolfyteze on 01/01/2021.
//  Copyright © 2021 wolfyteze. All rights reserved.
//

import Foundation

class NetworkService {
    private init() {}
    
    static let shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping (Any)->()) {
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error);
            }
        }.resume()
    }
}
