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
    
    lazy var dragonView: CustomView = {
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
        
    }

}
