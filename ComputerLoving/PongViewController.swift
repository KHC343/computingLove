//
//  PongViewController.swift
//  ComputerLoving
//
//  Created by smorris on 9/15/15.
//  Copyright (c) 2015 LateNightGames. All rights reserved.
//

import UIKit

class PongViewController: UIViewController {

    override func viewDidLoad() {
        
        playerPaddle = UIView(frame: CGRectMake(500, view.center.y, 30, 90))
        playerPaddle.backgroundColor = UIColor.redColor()
        playerPaddle.layer.cornerRadius = 5
        playerPaddle.layer.masksToBounds = true
        view.addSubview(playerPaddle)
        
        enemyPaddle = UIView(frame: CGRectMake(150, view.center.y, 30, 90))
        enemyPaddle.backgroundColor = UIColor.redColor()
        enemyPaddle.layer.cornerRadius = 5
        enemyPaddle.layer.masksToBounds = true
        view.addSubview(enemyPaddle)
        
        super.viewDidLoad()
    }
    var playerPaddle : UIView = UIView()
    var enemyPaddle : UIView = UIView()
    var ball : UIView = UIView()
    
    
}
