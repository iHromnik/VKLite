//
//  FriendGroupXibCell.swift
//  VKLite
//
//  Created by HappyRoman on 05/04/2023.
//

import UIKit

class FriendGroupXibCell: UITableViewCell {
    
    @IBOutlet weak var avatarImage: UIImageView!    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
