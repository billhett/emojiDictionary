//
//  ViewController.swift
//  emojiDictionary
//
//  Created by William Hettinger on 2/23/18.
//  Copyright © 2018 William Hettinger. All rights reserved..
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("index path is \(indexPath.row)")
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("in first vc: \(sender!)")
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() ->[Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😍"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with heart eyes"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2008
        emoji2.category = "Smiley"
        emoji2.definition = "A smiley face with sunglasses"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤠"
        emoji3.birthYear = 2011
        emoji3.category = "Smiley"
        emoji3.definition = "A smiley face with cowboy hat"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😫"
        emoji4.birthYear = 2012
        emoji4.category = "Smiley"
        emoji4.definition = "A sad face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐹"
        emoji5.birthYear = 2005
        emoji5.category = "Animal"
        emoji5.definition = "A cute hamster"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🍼"
        emoji6.birthYear = 2013
        emoji6.category = "Thing"
        emoji6.definition = "A baby bottle"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🍸"
        emoji7.birthYear = 2003
        emoji7.category = "Thing"
        emoji7.definition = "A Martini"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "👽"
        emoji8.birthYear = 2015
        emoji8.category = "Smiley"
        emoji8.definition = "An Alien"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6,emoji7,emoji8]
        
        
        
    }


}

