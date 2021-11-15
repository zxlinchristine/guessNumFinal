//
//  ViewController.swift
//  guessNum
//
//  Created by NDHU_CSIE on 2021/11/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var userNumText: UITextField!
    @IBOutlet weak var gameButton: UIButton!
    var secretNum = Int.random(in: 1...10)
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        start()
    }
    
    @IBAction func guessButton(_ sender: UIButton) {
        let userNum = Int(userNumText.text!)!
        
        if userNum == secretNum {
            messageLabel.text = "Correct!"
            secretNum = Int.random(in: 1...10)
            gameButton.isHidden = false
                
        } else if userNum > secretNum {
            messageLabel.text = "less than " + String(userNum)
            count = count + 1
            gameButton.isHidden = true
        } else {
            messageLabel.text = "Great than " + String(userNum)
            count = count + 1
            gameButton.isHidden = true
        }
        if count == 5 {
            messageLabel.text = "faild the game!"
            gameButton.isHidden = false
        }
        
    }
    
    @IBAction func newTheGame(_ sender: UIButton) {
        start()
        }
    
    func start(){
        secretNum = Int.random(in: 1...10)
        gameButton.isHidden = true
        
        
    }
}
    



 
