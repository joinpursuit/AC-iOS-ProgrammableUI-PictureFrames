//
//  Exercise1ViewController.swift
//  Exercise1
//
//  Created by Alex Paul on 1/4/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class Exercise1ViewController: UIViewController {
    
    let customView = CustomView(image: #imageLiteral(resourceName: "pitons"),
                                text: "Beautiful Saint Lucia",
                                backgroundColor: .orange,
                                textColor: .white)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(customView)
    }

}
