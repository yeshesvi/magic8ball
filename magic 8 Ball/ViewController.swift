//
//  ViewController.swift
//  magic 8 Ball
//
//  Created by Dev Mode on 11/29/17.
//  Copyright © 2017 Yesh. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        updateBallImage()
        vibratePhone()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
        print("motion detected")
        vibratePhone()
    }
    
    func updateBallImage() {
        ballImageView.image = UIImage(named : ballArray[Int(arc4random_uniform(5))])
    }
    
    func vibratePhone() {
        for _ in 1...1 {
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            sleep(1)
        }
    }
}

