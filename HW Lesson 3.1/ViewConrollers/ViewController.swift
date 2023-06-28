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
    
    @IBAction func animatedButton(_ sender: SpringButton) {
        
        currentAnimation = nextAnimation
        nextAnimation = Animation.getAnimation()
        
        animationView.getAnimationView(wich: currentAnimation)
        
        arrayLabel[0].text = currentAnimation.preset
        arrayLabel[1].text = currentAnimation.curve
        arrayLabel[2].text = String(format: "%.1f", currentAnimation.force)
        arrayLabel[3].text = String(format: "%.1f", currentAnimation.duration)
        arrayLabel[4].text = String(format: "%.1f", currentAnimation.delay)
        
        sender.setTitle("Next: \(nextAnimation.preset)", for: .normal)
    
    }
}

extension SpringView {
    func getAnimationView(wich animation: Animation) {
        
       let animationView = SpringView()
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
    }
}

extension ViewController {
    func getNameLabel(wich animation: Animation) {
            
        arrayLabel[0].text = animation.preset
        arrayLabel[1].text = animation.curve
        arrayLabel[2].text = String(format: "%.1f", animation.force)
        arrayLabel[3].text = String(format: "%.1f", animation.duration)
        arrayLabel[4].text = String(format: "%.1f", animation.delay)
    }
}

/*
extension ViewController {
    func getNameLabel(wich animation: Animation) {
        
        let label = arrayLabel
        
        for index in 0...arrayLabel.count {
            
            label?[index].text = currentAnimation.preset
            label?[index].text = currentAnimation.curve
            label?[index].text = String(format: "%.1f", currentAnimation.force)
            label?[index].text = String(format: "%.1f", currentAnimation.duration)
            label?[index].text = String(format: "%.1f", currentAnimation.delay)
        }
    }
} не сработал
*/
