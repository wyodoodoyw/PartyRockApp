//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Matthew Wood on 2016-10-20.
//  Copyright © 2016 Matthew. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        videoTitleLabel.text = partyRock.videoTitle
        
        // TODO: set image from URL
    }
}
