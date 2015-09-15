//
//  PongViewController.swift
//  ComputerLoving
//
//  Created by smorris on 9/15/15.
//  Copyright (c) 2015 LateNightGames. All rights reserved.
//

import UIKit

class PongViewController: UIViewController, UICollisionBehaviorDelegate {
    
    var allViews = [UIView]()
    var collisonBehavior = UICollisionBehavior()
    var playerPaddle : UIView = UIView()
    var enemyPaddle : UIView = UIView()
    var ball : UIView = UIView()
    var dynamicAnimator = UIDynamicAnimator()
    var ballBehavior = UIDynamicItemBehavior()

    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.blackColor()
        dynamicAnimator = UIDynamicAnimator(referenceView: view)
        
        playerPaddle = UIView(frame: CGRectMake(500, view.center.y, 30, 90))
        playerPaddle.backgroundColor = UIColor.blueColor()
        playerPaddle.layer.cornerRadius = 5
        playerPaddle.layer.masksToBounds = true
        allViews.append(playerPaddle)
        view.addSubview(playerPaddle)
        
        enemyPaddle = UIView(frame: CGRectMake(150, view.center.y, 30, 90))
        enemyPaddle.backgroundColor = UIColor.redColor()
        enemyPaddle.layer.cornerRadius = 5
        enemyPaddle.layer.masksToBounds = true
        allViews.append(enemyPaddle)
        view.addSubview(enemyPaddle)
        
        ball = UIView(frame: CGRectMake(view.center.x, view.center.y, 20, 20))
        ball.backgroundColor = UIColor.greenColor()
        ball.layer.cornerRadius = 10
        ball.layer.masksToBounds = true
        allViews.append(ball)
        view.addSubview(ball)
        
        ballBehavior = UIDynamicItemBehavior(items: [ball])
        ballBehavior.elasticity = 1.0
        ballBehavior.allowsRotation = false
        ballBehavior.friction = 0.0
        ballBehavior.resistance = 0.0
        dynamicAnimator.addBehavior(ballBehavior)
        
        var pushBehavior = UIPushBehavior(items: [ball], mode: UIPushBehaviorMode.Instantaneous)
        pushBehavior.magnitude = 0.2
        pushBehavior.angle = 1.1
        pushBehavior.active = true
        dynamicAnimator.addBehavior(pushBehavior)
        
        collisonBehavior = UICollisionBehavior(items: allViews)
        collisonBehavior.collisionMode = UICollisionBehaviorMode.Everything
        collisonBehavior.collisionDelegate = self
        collisonBehavior.translatesReferenceBoundsIntoBoundary = true
        dynamicAnimator.addBehavior(collisonBehavior)
        
        super.viewDidLoad()
    }
    
    
    
}
