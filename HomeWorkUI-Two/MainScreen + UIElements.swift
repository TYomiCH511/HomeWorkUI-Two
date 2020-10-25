//
//  Uielement.swift
//  HomeWorkUI-Two
//
//  Created by Artem on 10/24/20.
//

import UIKit

class MainScreen: UIView {
    
    
//    MARK: - Create main screen
    
    var nameGame: UIView = {
        let image = UIView()
        
        
        
        return image
    }()
    
    
    
    
//     Score label
    
    var labelScore: UILabel = {
        let score = UILabel()
        
        score.translatesAutoresizingMaskIntoConstraints = false
        score.textAlignment = .center
        score.text = "0"
        score.textColor = .white
        score.backgroundColor = .red
        score.font = .systemFont(ofSize: 70, weight: .black)
        
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
        score.font = .systemFont(ofSize: 30, weight: .black)
        
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
        start.pulsate()
        return start
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(patternImage: UIImage(named: "Start.png")!)
        
        addSubview(nameGame)
        nameGame.topAnchor.constraint(equalTo: topAnchor, constant: 120).isActive = true
        nameGame.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60).isActive = true
        nameGame.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60).isActive = true
        
        addSubview(labelScore)
        labelScore.topAnchor.constraint(equalTo: topAnchor, constant: 280).isActive = true
        labelScore.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 150).isActive = true
        labelScore.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -150).isActive = true
        
        addSubview(bestScore)
        bestScore.topAnchor.constraint(equalTo: topAnchor, constant: 380).isActive = true
        bestScore.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 110).isActive = true
        bestScore.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -110).isActive = true
        
        addSubview(gameStart)
        gameStart.topAnchor.constraint(equalTo: topAnchor, constant: 600).isActive = true
        gameStart.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80).isActive = true
        gameStart.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80).isActive = true

       
    }
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
