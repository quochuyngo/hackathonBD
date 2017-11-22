//
//  ConversationCell.swift
//  HackathonBD-WeSpeak
//
//  Created by Quoc Huy Ngo on 11/21/17.
//  Copyright © 2017 Huy Ngo. All rights reserved.
//

import UIKit

class ConversationCell: UITableViewCell {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var profilePicture: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        profilePicture.make(cornerRadius: profilePicture.frame.height/2)
        bgView.layer.borderWidth = 1
        bgView.layer.borderColor = UIColor.mainColor().cgColor
        bgView.layer.cornerRadius = 6
        flagImageView.image = UIImage(named: "US")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
