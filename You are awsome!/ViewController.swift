//
//  ViewController.swift
//  You are awsome!
//
//  Created by Felix Leitl on 05.06.22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let numberOfImages = 10
    let numberOfSounds = 5
    var messageNumber = -1
    var imageNumber = -1
    var soundNumber = -1
    var audioPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("ERROR: \(error.localizedDescription)")
            }
        }else{
            print("ERROR: 404")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBound: Int) -> Int{
    var newNumber: Int
        repeat{
            newNumber = Int.random(in: 0...upperBound-1)
        }while newNumber == originalNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awsome",
                        "You Are Great!",
                        "You Are A Legend!",
                        "You Are Da Bomb!",
                        "You Are Unbelievable!",
                        "This Message is way to long for one line!"]
       
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBound: numberOfSounds)
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBound: numberOfImages)
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBound: messages.count)
        playSound(name: "sound\(soundNumber)")
        imageView.image = UIImage(named: "image\(imageNumber)")
        messageLabel.text = messages[messageNumber]
    }
}
 
