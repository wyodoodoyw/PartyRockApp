//
//  VideoPlayerVC.swift
//  PartyRockApp
//
//  Created by Matthew Wood on 2016-10-20.
//  Copyright © 2016 Matthew. All rights reserved.
//

import UIKit

class VideoPlayerVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLabel: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            titleLabel.text = partyRock.videoTitle
            webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
