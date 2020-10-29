//
//  Extensios + CA.swift
//  HomeWorkUI-Two
//
//  Created by Artem on 10/25/20.
//

import UIKit

extension UIButton {
    
    func pulsate() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.duration = 0.6
        pulse.fromValue = 0.98
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.initialVelocity = 0.5
        pulse.damping = 1
        pulse.repeatCount = 11111
        layer.add(pulse, forKey: nil)
    }
}
