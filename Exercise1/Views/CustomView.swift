//
//  CustomView.swift
//  Exercise1
//
//  Created by Alex Paul on 1/4/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = #imageLiteral(resourceName: "placeholder-image")
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "PlaceHolder"
        return label
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    convenience init(image: UIImage,
                     text: String,
                     backgroundColor: UIColor,
                     textColor: UIColor) {
        self.init(frame: UIScreen.main.bounds)
        self.imageView.image = image
        self.nameLabel.text = text
        self.backgroundColor = backgroundColor
        self.nameLabel.textColor = textColor
        setupViews()
    }
    
    private func commonInit() {
        setupViews()
    }
    
    private func setupViews() {
        setupContainerView()
        setupNameLabel()
        setupImageView()
    }
    
    private func setupContainerView() {
        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75).isActive = true
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
    }
    
    private func setupNameLabel() {
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 16).isActive = true
    }
    
    private func setupImageView() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
    }

}
