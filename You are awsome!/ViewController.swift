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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You are Awsome"
        imageView.image = UIImage.init(named: "image0")
    }
    
}

