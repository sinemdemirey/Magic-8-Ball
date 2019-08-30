//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sinem Demirey on 7.08.2019.
//  Copyright © 2019 Sinem Demirey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewBall: UIImageView!
    
    var ballsArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var generateBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ballImageChanger()
    }

    @IBAction func askButton(_ sender: UIButton) {
        ballImageChanger()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        ballImageChanger()
    }
    
    func ballImageChanger(){
        generateBallNumber = Int.random(in: 0...4)
        
        imageViewBall.image = UIImage(named: ballsArray[generateBallNumber])
    }
    
}

