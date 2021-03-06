//
//  SecondViewController.swift
//  HomeWorkUI-Two
//
//  Created by Artem on 10/24/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var carImage: UIImageView!
    @IBOutlet var centerXConstraint: NSLayoutConstraint!
    
    let panGestureRecognizer = UIPanGestureRecognizer()
    var panGestureAnchorPoint: CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    @IBAction func goToViewController() {
        dismiss(animated: true)
    }
    
}
