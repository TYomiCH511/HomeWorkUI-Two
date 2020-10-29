//
//  ViewController.swift
//  HomeWorkUI-Two
//
//  Created by Artem on 10/24/20.
//

import UIKit

class ViewController: UIViewController {
    
    var myView = MainScreen()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        myView.gameStart.addTarget(self, action: #selector(pressGameStart), for: .touchUpInside)
        view = myView
    }
}

