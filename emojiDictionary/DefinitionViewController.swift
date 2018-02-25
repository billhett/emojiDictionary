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
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("in 2nd vc: \(emoji)")
        bigEmojiLabel.text = emoji
        if emoji == "😍" {
            definitionLabel.text = "Heart eyes"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2009"
        } else if emoji == "😎"{
            definitionLabel.text = "Sunglass dude"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2008"
        } else if emoji == "🤠"{
            definitionLabel.text = "Cowboy dude"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2002"
        }  else if emoji == "😫"{
            definitionLabel.text = "Sad dude"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2001"
        } else if emoji == "🐹"{
            definitionLabel.text = "Cute Hampster"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "BirthYear: 2011"
        } else if emoji == "🍼"{
            definitionLabel.text = "Baby Bottle"
            categoryLabel.text = "Category: Thing"
            birthYearLabel.text = "BirthYear: 2009"
        } else if emoji == "🍸"{
            definitionLabel.text = "Martini"
            categoryLabel.text = "Category: Thing"
            birthYearLabel.text = "BirthYear: 2007"
        } else if emoji == "👽"{
            definitionLabel.text = "Alien"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2009"
        } else {
            definitionLabel.text = "no emoji"
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
