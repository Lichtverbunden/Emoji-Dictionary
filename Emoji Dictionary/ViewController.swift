//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ken Krippeler on 27.08.16.
//  Copyright © 2016 Lichtverbunden. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = emoji.stringEmoji
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]
    {
        
        let emoji1 = Emoji()
        let emoji2 = Emoji()
        let emoji3 = Emoji()
        let emoji4 = Emoji()
        let emoji5 = Emoji()
        let emoji6 = Emoji()
        let emoji7 = Emoji()
        
        
        emoji1.stringEmoji = "😎"
        emoji1.definition = "A dude with sunglasses."
        emoji1.category = "Smiley"
        emoji1.birthYear = 2009
        
        emoji2.stringEmoji = "😨"
        emoji2.definition = "He's feeling sick."
        emoji2.category = "Smiley"
        emoji2.birthYear = 2009
        
        emoji3.stringEmoji = "💩"
        emoji3.definition = "A brown thing."
        emoji3.category = "Smiley"
        emoji3.birthYear = 2009
        
        emoji4.stringEmoji = "😀"
        emoji4.definition = "He's feeling so well."
        emoji4.category = "Smiley"
        emoji4.birthYear = 2009
        
        emoji5.stringEmoji = "👠"
        emoji5.definition = "Does this shoe fit on Cinderella?"
        emoji5.category = "Other"
        emoji5.birthYear = 2011
        
        emoji6.stringEmoji = "🐹"
        emoji6.definition = "A cute Hamster!"
        emoji6.category = "Animal"
        emoji6.birthYear = 2011
        
        emoji7.stringEmoji = "🐬"
        emoji7.definition = "What a beautiful being!"
        emoji7.category = "Animal"
        emoji7.birthYear = 2011
        
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }
}

