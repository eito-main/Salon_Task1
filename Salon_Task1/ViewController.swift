//
//  ViewController.swift
//  Salon_Task1
//
//  Created by 相良 詠斗 on 2021/06/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var thirdText: UITextField!
    @IBOutlet weak var fourthText: UITextField!
    @IBOutlet weak var fifthText: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.text = "0"
        
        self.firstText.keyboardType = UIKeyboardType.numberPad
        self.secondText.keyboardType = UIKeyboardType.numberPad
        self.thirdText.keyboardType = UIKeyboardType.numberPad
        self.fourthText.keyboardType = UIKeyboardType.numberPad
        self.fifthText.keyboardType = UIKeyboardType.numberPad

    }

    @IBAction func buttonAction(_ sender: Any) {
        
        let firstNum = NumberFormatter().number(from: firstText.text ?? "0") as? Int ?? 0
        let secondNum = NumberFormatter().number(from: secondText.text ?? "0") as? Int ?? 0
        let thirdNum = NumberFormatter().number(from: thirdText.text ?? "0") as? Int ?? 0
        let fourthNum = NumberFormatter().number(from: fourthText.text ?? "0") as? Int ?? 0
        let fifthNum = NumberFormatter().number(from: fifthText.text ?? "0") as? Int ?? 0
        
        let numbers = [firstNum, secondNum, thirdNum, fourthNum, fifthNum]
        
        answerLabel.text = "\(addition(numbers: numbers))"
    }
    
    func addition(numbers: [Int]) -> Int {
        
        let result: Int = numbers.reduce(0) { $0 + $1 }

        return result
    }
}

