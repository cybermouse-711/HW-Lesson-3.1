//
//  Extension + SpringView.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 29.06.2023.
//

import UIKit
import SpringAnimation

var currentaAnimation: Animation!

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
