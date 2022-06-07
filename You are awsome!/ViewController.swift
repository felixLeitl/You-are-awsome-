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
    
    var imageNumber = 0
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        //let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        let messages = ["You Are Awsome", "You Are Great!", "You Are A Legend!", "You Are Da Bomb!"]
        
        print(imageNumber)
        print(messageNumber)
        
        imageView.image = UIImage(named: imageName)
        
        if imageNumber == 9 {
            imageNumber = 0
        } else {
            imageNumber = imageNumber + 1
        }
        
        if messageNumber == messages.count {
            messageNumber = 0
            messageLabel.text = messages[0]
            messageNumber += 1
        }else{
            messageLabel.text = messages[messageNumber]
            messageNumber += 1
        }
    }
    
}

