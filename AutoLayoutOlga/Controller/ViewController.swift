//
//  ViewController.swift
//  AutoLayoutOlga
//
//  Created by olga.krjuckova on 26/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var styleOutletCollection: [UIButton]!
    
    @IBOutlet weak var buttonBOutlet: UIButton!
    @IBOutlet weak var buttonCOutlet: UIButton!
    @IBOutlet weak var buttonDOutlet: UIButton!
    @IBOutlet weak var buttonEOutlet: UIButton!
    var buttonBIsOn = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutletCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 3
        }
        
    }

    @IBAction func refreshTapped(_ sender: Any) {
        navigationItem.title = "Auto Layout"
        self.buttonCOutlet.isHidden = false
        self.buttonDOutlet.isHidden = false
        self.buttonEOutlet.isHidden = false
    }
    
    @IBAction func buttonATapped(_ sender: Any) {
        navigationItem.title = "Button A"
        self.buttonCOutlet.isHidden = true
        self.buttonDOutlet.isHidden = true
        self.buttonEOutlet.isHidden = true
        
    }
    
    @IBAction func buttonBTapped(_ sender: Any) {
        if buttonBIsOn {
            self.buttonBIsOn = false
            self.buttonBOutlet.setTitleColor(UIColor.white, for: .normal)
            self.view.backgroundColor = .gray
        }else{
                self.buttonBIsOn = true
                self.buttonBOutlet.setTitleColor(UIColor.black, for: .normal)
                self.view.backgroundColor = .white       }
        
    }
    
}

