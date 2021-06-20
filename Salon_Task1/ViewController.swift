//
//  ViewController.swift
//  Salon_Task1
//
//  Created by 相良 詠斗 on 2021/06/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var fourthTextField: UITextField!
    @IBOutlet weak var fifthTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!

    private var textFields: [UITextField] {
        [firstTextField, secondTextField, thirdTextField, fourthTextField, fifthTextField]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        answerLabel.text = "0"

        textFields.forEach {
            $0.keyboardType = .numberPad
        }
    }

    @IBAction func buttonAction(_ sender: Any) {
        let numberFormatter = NumberFormatter()

        let numbers = textFields
            .map { numberFormatter.number(from: $0.text ?? "")?.intValue ?? 0 }

        answerLabel.text = "\(addition(numbers: numbers))"
    }

    func addition(numbers: [Int]) -> Int {
        numbers.reduce(0, +)
    }
}

print("o")
