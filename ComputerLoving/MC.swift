//
//  MC.swift
//  ComputerLoving
//
//  Created by kcarter on 9/14/15.
//  Copyright (c) 2015 LateNightGames. All rights reserved.
//

import UIKit

class MC: NSObject
{
    var one = 0
    var two = 0
    var three = 0
    var four = 0
    var gender = 0
    var name = ""
    var greatest = 0
    
    convenience init(MCname: String, Gender: Int)
    {
        self.init()
        self.gender = 0
        self.name = MCname
        if ( one > two && one > three && one > four)
        {
            self.greatest = 1
        }
        if ( two > one && two > three && two > four)
        {
            self.greatest = 2
        }
        if ( three > one && three > two && three > four)
        {
            self.greatest = 2
        }
        if ( four > one && four > two && four > three)
        {
            self.greatest = 3
        }
        else
        {
            self.greatest = 0
        }
    }
    

}
