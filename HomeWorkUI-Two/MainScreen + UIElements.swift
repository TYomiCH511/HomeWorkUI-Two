//
//  Uielement.swift
//  HomeWorkUI-Two
//
//  Created by Artem on 10/24/20.
//

import UIKit

class MainScreen: UIView {
    
    
//    MARK: - Create main screen
    
    var mainImage: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "Start")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    
    
    
    var nameGame: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "Name")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    
//     Score label
    
    var labelScore: UILabel = {
        let score = UILabel()
        
        score.translatesAutoresizingMaskIntoConstraints = false
        score.textAlignment = .center
        score.text = String(Int.random(in: 0...100))
        score.textColor = .white
        score.backgroundColor = .red
        score.font = .systemFont(ofSize: 60, weight: .black)
        score.adjustsFontSizeToFitWidth = true
        score.isUserInteractionEnabled = true
        
        return score
    }()
    
//    Best score??
    
    let bestScore: UILabel = {
        let score = UILabel()
        
        score.translatesAutoresizingMaskIntoConstraints = false
        score.textAlignment = .center
        score.text = "Best score"
        score.textColor = .white
        score.backgroundColor = .red
        score.font = .systemFont(ofSize: 40, weight: .black)
        score.adjustsFontSizeToFitWidth = true
        
        return score
    }()
    
//     create button Game start
    
    let gameStart: UIButton = {
        let start = UIButton(type: .system)
        
        start.translatesAutoresizingMaskIntoConstraints = false
        start.setTitle("START GAME", for: .normal)
        start.backgroundColor = .white
        start.titleLabel?.font = .systemFont(ofSize: 30, weight: .black)
        start.titleLabel?.textAlignment = .center
        start.setTitleColor(.black, for: .normal)
        start.titleLabel?.adjustsFontSizeToFitWidth = true
        start.pulsate()
        
        return start
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainImage)
        mainImage.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        mainImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        mainImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        mainImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        addSubview(nameGame)
        nameGame.topAnchor.constraint(equalTo: topAnchor, constant: 80).isActive = true
        nameGame.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameGame.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        
        addSubview(labelScore)
        labelScore.topAnchor.constraint(equalTo: topAnchor, constant: 220).isActive = true
        labelScore.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 130).isActive = true
        labelScore.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -130).isActive = true
        
        let tapLabbel = UITapGestureRecognizer(target: self, action: #selector(generateRandomNumber))
        tapLabbel.numberOfTapsRequired = 2
        labelScore.addGestureRecognizer(tapLabbel)
        
        addSubview(bestScore)
        bestScore.topAnchor.constraint(equalTo: topAnchor, constant: 310).isActive = true
        bestScore.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90).isActive = true
        bestScore.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -90).isActive = true
        
        addSubview(gameStart)
        gameStart.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -140).isActive = true
        gameStart.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80).isActive = true
        gameStart.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80).isActive = true
       
    }
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func generateRandomNumber() {
         
     labelScore.text = String(Int.random(in: 0...100))
        
     }
    
}
