//
//  ViewController.swift
//  Reese's
//
//  Created by Fernando Mendoza on 2024-08-11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    let message1:String = "You Got Peanut Butter in my Chocolate!"
    let message2:String = "You Got Chocolate in my Peanut Butter!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.font = .boldSystemFont(ofSize: 40.0)
        messageLabel.lineBreakMode = .byWordWrapping
        messageLabel.numberOfLines = 10
    }


    @IBAction func heyPressed(_ sender: UIButton) {
        if message1 == messageLabel.text {
            messageLabel.text = message2
            messageLabel.textColor = .orange
            messageLabel.textAlignment = .right
        } else {
            messageLabel.text = message1
            messageLabel.textColor = .brown
            messageLabel.textAlignment = .left
        }
    }
}

