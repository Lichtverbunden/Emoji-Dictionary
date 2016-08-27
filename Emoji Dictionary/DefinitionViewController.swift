//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ken Krippeler on 27.08.16.
//  Copyright © 2016 Lichtverbunden. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController
{

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "No Emoji"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "🐹"
        {
          definitionLabel.text = "A cute Hamster!"
        }
        else if emoji == "😎"
        {
            definitionLabel.text = "A dude with sunglasses."
        }
        else if emoji == "😨"
        {
            definitionLabel.text = "He's feeling sick."
        }
        else if emoji == "💩"
        {
            definitionLabel.text = "A brown thing."
        }
        else if emoji == "😀"
        {
            definitionLabel.text = "He's feeling so good."
        }
        else if emoji == "👠"
        {
            definitionLabel.text = "Does this shoe fit on Cinderella?"
        }
        else if emoji == "🐬"
        {
            definitionLabel.text = "What a beautiful being!"
        }
        
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
