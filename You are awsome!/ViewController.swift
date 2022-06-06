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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
                
        print(imageNumber)
        //let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        if imageNumber == 9 {
            imageNumber = 0
        } else {
            imageNumber = imageNumber + 1
        }
       
       
        
                //        let awsomeMessage = "You Are Awsome!"
                //        let greatMessage = "You Are Great!"
                //
                //        if messageLabel.text == awsomeMessage {
                //            messageLabel.text = greatMessage
                //            imageView.image = UIImage (named: "image1")
                //        } else {
                //            messageLabel.text = awsomeMessage
                //            imageView.image = UIImage.init(named: "image0")
                //        }
    }
    
}

