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
        myView.labelScore.text = String(Int.random(in: 1...100))
        myView.gameStart.addTarget(self, action: #selector(press), for: .touchUpInside)
       
        view = myView
   
    }
 }

