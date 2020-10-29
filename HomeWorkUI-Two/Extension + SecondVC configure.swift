//
//  Extension + SecondVC configure.swift
//  HomeWorkUI-Two
//
//  Created by Artem on 10/29/20.
//

import Foundation

extension SecondViewController {
    
    func configure() {
        panGestureRecognizer.addTarget(self, action: #selector(handlePanGesture(_:)))
        panGestureRecognizer.maximumNumberOfTouches = 1
        view.addGestureRecognizer(panGestureRecognizer)
    }
}
