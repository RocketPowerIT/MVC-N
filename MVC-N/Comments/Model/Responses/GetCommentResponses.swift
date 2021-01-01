//
//  GetCommentResponses.swift
//  MVC-N
//
//  Created by wolfyteze on 01/01/2021.
//  Copyright © 2021 wolfyteze. All rights reserved.
//

import Foundation

struct GetCommentResponses {
    typealias JSON = [String: AnyObject]
    let comment: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternet}
        
        var comments = [Comment]()
        
        for dic in array {
            guard let comment = Comment(dict: dic) else { continue }
            comments.append(comment)
        }
        self.comment=comments
    }
}
