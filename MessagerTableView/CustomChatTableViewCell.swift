//
//  CustomChatTableViewCell.swift
//  MessagerTableView
//
//  Created by Nguyễn Văn Hiếu on 6/9/24.
//

import UIKit

class CustomChatTableViewCell: UITableViewCell {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var bottomStatusView: UIView!
    @IBOutlet weak var statusImage: UIImageView! 
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        configStyle()
    }
    
    private func configStyle() {
        bottomStatusView.layer.cornerRadius = bottomStatusView.frame.height / 2
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
    }
}
