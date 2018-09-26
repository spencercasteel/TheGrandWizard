//
//  ViewController.swift
//  magicEightBall
//
//  Created by Spencer Casteel on 9/22/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var getAnswerButton: UIButton!
    @IBOutlet weak var promptUser: UILabel!
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var getAnswer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getAnswerButton.setTitle("Ask", for: .normal)
        promptUser.text = "Ask the grand wizard any question your heart desires"
        getAnswer.text = ""
        self.view.backgroundColor = UIColor.orange
    }
    
    func handleAnswer(_ input: Int) {
        switch input {
        case 0:
            getAnswer.text = """
            \(userInput.text!)
            It is certain.
            """
        case 1:
            getAnswer.text = """
            \(userInput.text!)
            It is decidedly so.
            """
        case 2:
            getAnswer.text = """
            \(userInput.text!)
            Without a doubt.
            """
        case 3:
            getAnswer.text = """
            \(userInput.text!)
            Yes - definitely.
            """
        case 4:
            getAnswer.text = """
            \(userInput.text!)
            You may rely on it.
            """
        case 5:
            getAnswer.text = """
            \(userInput.text!)
            As I see it, yes.
            """
        case 6:
            getAnswer.text = """
            \(userInput.text!)
            Most likely.
            """
        case 7:
            getAnswer.text = """
            \(userInput.text!)
            Outlook good.
            """
        case 8:
            getAnswer.text = """
            \(userInput.text!)
            Yes.
            """
        case 9:
            getAnswer.text = """
            \(userInput.text!)
            Signs point to yes.
            """
        case 10:
            getAnswer.text = """
            \(userInput.text!)
            Reply hazy, try again
            """
        case 11:
            getAnswer.text = """
            \(userInput.text!)
            Ask again later.
            """
        case 12:
            getAnswer.text = """
            \(userInput.text!)
            Better not tell you now.
            """
        case 13:
            getAnswer.text = """
            \(userInput.text!)
            Cannot predict now.
            """
        case 14:
            getAnswer.text = """
            \(userInput.text!)
            Concentrate and ask again.
            """
        case 15:
            getAnswer.text = """
            \(userInput.text!)
            Don't count on it.
            """
        case 16:
            getAnswer.text = """
            \(userInput.text!)
            My reply is no.
            """
        case 17:
            getAnswer.text = """
            \(userInput.text!)
            My sources say no.
            """
        case 18:
            getAnswer.text = """
            \(userInput.text!)
            Outlook not so good.
            """
        default:
            getAnswer.text = """
            \(userInput.text!)
            Very doubtful.
            """
        }
    }
    
    @IBAction func ballShackin(_ sender: Any) {
        let randomNumber = Int(arc4random_uniform(19))+1
        promptUser.text = "the wizard says"
        handleAnswer(randomNumber)
        userInput.text = ""
    }
    
    
}

