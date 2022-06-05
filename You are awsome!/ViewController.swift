//
//  ViewController.swift
//  You are awsome!
//
//  Created by Felix Leitl on 05.06.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did work!")
        messageLabel.text = "You are Fabulous"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("button pressed!")
        messageLabel.text = "You are Awsome"
    }
    
}

