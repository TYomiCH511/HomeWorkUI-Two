//
//  Extension + PanGesture.swift
//  HomeWorkUI-Two
//
//  Created by Artem on 10/28/20.
//

import UIKit

extension SecondViewController {
    
    @objc func handlePanGesture(_ gestureRecognizer: UIPanGestureRecognizer) {
        guard panGestureRecognizer === gestureRecognizer else { assert(false); return }
        
        switch gestureRecognizer.state {
        
        case .began:
            assert(panGestureAnchorPoint == nil)
            panGestureAnchorPoint = gestureRecognizer.location(in: view)
            
        case .changed:
            guard let panGestureAnchorPoint = panGestureAnchorPoint else { assert(false); return }
            
            let gesturePoint = gestureRecognizer.location(in: view)
            
//            проверяем на выход за границу экрана
            
            if carImage.frame.minX < view.frame.minX + 5 {
                centerXConstraint.constant = -((view.frame.maxX - carImage.frame.width - 10) / 2 )
            }
            
            if carImage.frame.maxX > view.frame.maxX - 5 {
                centerXConstraint.constant = ((view.frame.maxX - carImage.frame.width - 10) / 2 )
            }
            
            centerXConstraint.constant += gesturePoint.x - panGestureAnchorPoint.x
            self.panGestureAnchorPoint = gesturePoint
            
        case .cancelled, .ended:
            panGestureAnchorPoint = nil
            
        case .failed, .possible:
            assert(panGestureAnchorPoint == nil)
            break
            
        @unknown default:
            break
        }
    }
}
