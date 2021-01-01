//
//  CommentCell.swift
//  MVC-N
//
//  Created by wolfyteze on 01/01/2021.
//  Copyright © 2021 wolfyteze. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
