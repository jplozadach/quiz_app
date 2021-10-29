//
//  ViewController.swift
//  quiz_app
//
//  Created by User on 29/10/21.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var YesButton: UIButton!
    @IBOutlet weak var NoButton: UIButton!
    @IBOutlet weak var AnswerImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.Question.text = Quiz().questions.question
        self.AnswerImage.image = UIImage(named: "question")
    }

    
    @IBAction func buttonYes(_ sender: Any) {
        let answer = Quiz().getAnswer(answer: true)
        self.AnswerImage.image = UIImage(named: "correct")
        print(answer)
    }
    
    
    @IBAction func buttonNo(_ sender: Any) {
        let answer = Quiz().getAnswer(answer: false)
        self.AnswerImage.image = UIImage(named: "incorrect")
        print(answer)
    }
    
}

