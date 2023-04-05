//
//  Model.swift
//  VKLite
//
//  Created by HappyRoman on 04/04/2023.
//

import UIKit

class Friends {
    let name: String
    let avatar: UIImage?
    
    init(name: String, avatar: UIImage? = UIImage(systemName: "tree")) {
        self.name = name
        self.avatar = avatar
    }
}
