//
//  Exercise1View.swift
//  Exercise1
//
//  Created by Alex Paul on 1/4/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class Exercise1View: UIView {
    
    let topStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let bottomStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        return stackView
    }()
    
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
        setupTopStackView()
        setupBottomStackView()
    }
    
    private func setupTopStackView() {
        addSubview(topStackView)
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        topStackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topStackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topStackView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.50).isActive = true
        topStackView.addArrangedSubview(pitonView)
        topStackView.addArrangedSubview(monkeyView)
        NSLayoutConstraint.activate(topStackView.constraints)

    }
    
    private func setupBottomStackView() {
        addSubview(bottomStackView)
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.topAnchor.constraint(equalTo: topStackView.bottomAnchor).isActive = true
        bottomStackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        bottomStackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        bottomStackView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.50).isActive = true
        bottomStackView.addArrangedSubview(dragonView)
        bottomStackView.addArrangedSubview(heartView)
    }    
}
