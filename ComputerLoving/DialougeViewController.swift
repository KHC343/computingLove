//
//  DialougeViewController.swift
//  ComputerLoving
//
//  Created by kcarter on 9/11/15.
//  Copyright (c) 2015 LateNightGames. All rights reserved.
//

import UIKit

class DialougeViewController: UIViewController {

    @IBOutlet weak var TextField: UITextView!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func Next(sender: AnyObject) {
        count++
        if(count == 1)
        {
            TextField.text = "Ha that's something I’ve never had."
        }
        if (count == 2)
        {
            TextField.text = "Confidence is for people who talk to others, who go outside. In other words what I’ve never been able to do.  It’s not that I haven't wanted to be active it’s just hard."
        }
        if (count == 3)
        {
            TextField.text = "I don’t remember when I started to be afraid of crowds maybe it has to do with my family. My Mother passed away when I was young leaving just me and my Dad. To keep us afloat my dad worked day and night to provide which left me alone in the house for the majority of the day."

        }
        if (count == 4)
        {
            TextField.text = "I became self dependent and spent most of my day alone on my computer or playing video games. I couldn’t even change myself if I wanted to and I do. Every time I have tried to be social I just fall back into old patterns, and now I’m going to college. Another four years of not fitting in. "
        }
        if (count == 5)
        {
            TextField.text = "thats where I found myself sitting in front of my computer just my blue desktop staring at me."
        }
        if (count == 6)
        {
            TextField.text = "How could I go to college it's nothing but being social. Maybe I can just withdraw from the school get a job at the supermarket or something."
        }
        if (count == 7)
        {
            TextField.text = "No my Dad worked hard for me how could I do that to him. Plus I need to leave for school in an hour."
        }
        
        
    }
}
