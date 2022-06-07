//
//  ViewController.swift
//  You are awsome!
//
//  Created by Felix Leitl on 05.06.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let numberOfImages = 9
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awsome",
                        "You Are Great!",
                        "You Are A Legend!",
                        "You Are Da Bomb!",
                        "You Are Unbelievable!",
                        "This Message is way to long for one line!"]
                        
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image" + String(Int.random(in: 0...numberOfImages)))
    }
}

