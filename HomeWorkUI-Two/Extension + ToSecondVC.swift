//
//  Extention + ToSecondVC.swift
//  HomeWorkUI-Two
//
//  Created by Artem on 10/25/20.
//

import UIKit


extension ViewController {
    
    @objc func press(_ sender: Any) {
        
        performSegue(withIdentifier: "second", sender: nil)
    }
    
    override func viewDidLayoutSubviews() {
        
        myView.gameStart.layer.cornerRadius = myView.gameStart.frame.height / 2
        
    }
}
