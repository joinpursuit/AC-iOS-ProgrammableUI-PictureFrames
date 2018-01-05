//
//  Exercise1ViewController.swift
//  Exercise1
//
//  Created by Alex Paul on 1/4/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class Exercise1ViewController: UIViewController {
    let exercise1View = Exercise1View()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(exercise1View)
        navigationItem.title = "Picture Frames"
    }
}
