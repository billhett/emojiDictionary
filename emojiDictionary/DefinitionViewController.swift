//
//  DefinitionViewController.swift
//  emojiDictionary
//
//  Created by William Hettinger on 2/24/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"
    
    @IBOutlet weak var bigEmojiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("in 2nd vc: \(emoji)")
        bigEmojiLabel.text = emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
