//
//  ViewController.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 26.06.2023.
//

import UIKit
import SpringAnimation

enum ChangeAnimation {
    case current, next
}

final class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!

    @IBOutlet var arrayLabel: [UILabel]!
    
    private let currentAnimation = Animation.getAnimation()
    private let nextAnimation = Animation.getAnimation()
    
    private let changeAnimation = ChangeAnimation.current
    
    
    
    @IBAction func animatedButton(_ sender: UIButton) {
        
        switch changeAnimation {
            
        case .current:
            animationView.getAnimationView(wich: currentAnimation)
            arrayLabel.getNameLabel(wich: currentAnimation)
            sender.titleLabel = "Next: \(nextAnimation.first)"
            changeAnimation = .next
            
        case .next:
            animationView.getAnimationView(wich: nextAnimation)
            arrayLabel.getNameLabel(wich: nextAnimation)
            sender.titleLabel = "Next: \(currentAnimation.first)"
            changeAnimation = .current
        }
    }
}

private extension SpringView {
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

private extension ViewController {
    func getNameLabel(wich animation: [Animation]) {
        
        for (label, varible) in zip(arrayLabel, animation) {
            label.text = varible.preset
            label.text = varible.curve
            label.text = String(varible.force)
            label.text = String(varible.duration)
            label.text = String(varible.delay)
        }
    }
}

