//
//  ViewController.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 26.06.2023.
//

import UIKit
import SpringAnimation


final class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!

    @IBOutlet var arrayLabel: [UILabel]!
    
    private var currentAnimation = Animation.getAnimation()
    private var nextAnimation = Animation.getAnimation()
    
    @IBAction func animatedButton(_ sender: UIButton) {
        
        currentAnimation = nextAnimation
        nextAnimation = Animation.getAnimation()
        
        //animationView.getAnimationView(wich: currentAnimation)
        //arrayLabel.getNameLabel(wich: currentAnimation)
        //не сработали
        
        animationView.animation = currentAnimation.preset
        animationView.curve = currentAnimation.curve
        animationView.force = currentAnimation.force
        animationView.duration = currentAnimation.duration
        animationView.delay = currentAnimation.delay
        animationView.animate()
        
        arrayLabel[0].text = currentAnimation.preset
        arrayLabel[1].text = currentAnimation.curve
        arrayLabel[2].text = String(format: "%.1f", currentAnimation.force)
        arrayLabel[3].text = String(format: "%.1f", currentAnimation.duration)
        arrayLabel[4].text = String(format: "%.1f", currentAnimation.delay)
        
        sender.setTitle("Next: \(nextAnimation.preset)", for: .normal)
    
    }
}


