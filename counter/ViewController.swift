//
//  ViewController.swift
//  counter
//
//  Created by Dmitry Khitrin on 29/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var counter: Int = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func reset() {
        counter = 0
        updateLabel()
    }
    @IBAction func decreaseButton() {
        counter = max(counter - 1, 0)
        updateLabel()
    }
    @IBAction func increaseCounter(_ sender: Any) {
        counter += 1
        updateLabel()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
        // Do any additional setup after loading the view.
    }
    
    func updateLabel() {
        counterLabel.text = "Значение счётчика: \(counter)"
    }


}

