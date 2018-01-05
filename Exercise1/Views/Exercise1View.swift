//
//  Exercise1View.swift
//  Exercise1
//
//  Created by Alex Paul on 1/4/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class Exercise1View: UIView {
    
    // four custom views
    
    lazy var pitonView: CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "pitons"),
                              text: "The Pitons",
                              backgroundColor: .green,
                              textColor: .black)
        return view
    }()
    
    lazy var dragonView : CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "dragon"),
                              text: "Year of Dragons",
                              backgroundColor: .yellow,
                              textColor: .black)
        return view
    }()
    
    lazy var monkeyView: CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "monkey"),
                              text: "Year of Monkey",
                              backgroundColor: .red,
                              textColor: .black)
        return view
    }()
    
    lazy var heartView: CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "heart"),
                              text: "I heart Swift",
                              backgroundColor: .blue,
                              textColor: .white)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupViews()
    }
    
    private func setupViews() {
        setupPitonView()
        setupDragonView()
        setupMonkeyView()
        setupHeartView()
    }
    
    private func setupPitonView() {
        addSubview(pitonView)
        pitonView.translatesAutoresizingMaskIntoConstraints = false
        pitonView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        pitonView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        pitonView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.50).isActive = true
        pitonView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.50).isActive = true
    }
    
    private func setupDragonView() {
        addSubview(dragonView)
        dragonView.translatesAutoresizingMaskIntoConstraints = false
        dragonView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.50).isActive = true
        dragonView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.50).isActive = true
        dragonView.leadingAnchor.constraint(equalTo: pitonView.trailingAnchor).isActive = true
        dragonView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
    }
        
    private func setupMonkeyView() {
        addSubview(monkeyView)
        monkeyView.translatesAutoresizingMaskIntoConstraints = false
        monkeyView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.50).isActive = true
        monkeyView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.50).isActive = true
        monkeyView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        monkeyView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    private func setupHeartView() {
        addSubview(heartView)
        heartView.translatesAutoresizingMaskIntoConstraints = false
        heartView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.50).isActive = true
        heartView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.50).isActive = true
        heartView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        heartView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

}
