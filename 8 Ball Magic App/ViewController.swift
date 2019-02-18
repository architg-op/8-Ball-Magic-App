//
//  ViewController.swift
//  8 Ball Magic App
//
//  Created by Archit Garg on 22/11/18.
//  Copyright © 2018 Archit tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomNumber = 0
    let imagesArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImageView()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeImageView()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeImageView()
    }
    
    func changeImageView() {
        randomNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: imagesArray[randomNumber])
    }
    
}

