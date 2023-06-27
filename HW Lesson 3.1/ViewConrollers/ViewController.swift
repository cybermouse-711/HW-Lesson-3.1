//
//  ViewController.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 26.06.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabeel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private let animation = Animation.getAnimation()
    
    @IBAction func animationButton(_ sender: UIButton) {
        
        
        animationView.getAnimationView()
        
    }
}

private extension SpringView {
    func getAnimationView() {
       let animationView = SpringView()
        animationView.animation = ""
        animationView.curve = ""
        animationView.force = 1
        animationView.duration = 1
        animationView.delay = 1
        animationView.animate()
    }
}

private extension ViewController {
    func getNameLabel() {
        presetLabel.text = "animation: \(animation[0])"
        curveLabel.text = "curve: \(animation[1])"
        forceLabel.text = "force: \(animation[2])"
        durationLabeel.text = "duration: \(animation[3])"
        delayLabel.text = "delay: \(animation[4])"
    }
    
}



