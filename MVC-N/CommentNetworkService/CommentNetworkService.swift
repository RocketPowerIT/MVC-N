//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by wolfyteze on 01/01/2021.
//  Copyright © 2021 wolfyteze. All rights reserved.
//

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(complition: @escaping(GetCommentResponses)->()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do{
                let responce = try GetCommentResponses(json: json)
                complition(responce)
            }catch{
                print(error)
            }
        }
    }
}
