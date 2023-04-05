//
//  FriendsCell.swift
//  VKLite
//
//  Created by HappyRoman on 04/04/2023.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet weak var avatarFriendsImage: UIImageView!
    
    @IBOutlet weak var nameFriendsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
