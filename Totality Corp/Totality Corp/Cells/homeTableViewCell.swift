//
//  homeTableViewCell.swift
//  Totality Corp
//
//  Created by Sanjay on 19/09/23.
//

import UIKit

class homeTableViewCell: UITableViewCell {

    @IBOutlet var profileView: UIView!
    @IBOutlet var bgView: UIView!
    @IBOutlet var playBtn: UIButton!
    @IBOutlet var downloadBtn: UIButton!
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var textLbl: UILabel!
    @IBOutlet var readmoreLbl: UILabel!
    @IBOutlet var deleteImg: UIImageView!
    @IBOutlet var stackView: UIStackView!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var progressBarHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        playBtn.isHidden = true
        playBtn.layer.cornerRadius = 25
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    @IBAction func downloadCLicked(_ sender: Any) {
        playBtn.isHidden = false
    }
}
