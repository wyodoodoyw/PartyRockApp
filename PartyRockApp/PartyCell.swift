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
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            // put operations, such as downloading images from the net, on an asynchronous thread to prevent
            // slowing down the app
            
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    // have data, can update UI
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // handle the error
            }
        }
    }
}
