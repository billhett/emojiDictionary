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
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("in 2nd vc: \(emoji)")
        bigEmojiLabel.text = emoji
        if emoji == "😍" {
            definitionLabel.text = "Heart eyes"
        } else if emoji == "😎"{
            definitionLabel.text = "Sunglass dude"
        } else if emoji == "🤠"{
            definitionLabel.text = "Cowboy dude"
        }  else if emoji == "😫"{
            definitionLabel.text = "Sad dude"
        } else if emoji == "🐹"{
            definitionLabel.text = "Cute Hampster"
        } else if emoji == "🍼"{
            definitionLabel.text = "Baby Bottle"
        } else if emoji == "🍸"{
            definitionLabel.text = "Martini"
        } else if emoji == "👽"{
            definitionLabel.text = "Alien"
        } else {
            definitionLabel.text = "no emoji"
        
    }
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}



}
