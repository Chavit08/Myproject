//
//  ViewController.swift
//  TestProject
//
//  Created by dtc on 17/12/2561 BE.
//  Copyright © 2561 dtc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mylogo: UIImageView!
    @IBOutlet weak var mybg: UIImageView!
    @IBOutlet weak var mybutton: UIButton!
    @IBOutlet weak var mybuttonpage2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Doclick(_ sender: Any) {
        mylogo.isHidden = false
        mybg.isHidden = false
        mybutton.isHidden = true
        mybuttonpage2.isHidden = false
        
    }
    @IBAction func Gotopage2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondController = storyboard.instantiateViewController(withIdentifier: "board2") as! ViewController2;
        secondController.texts = "Hello world"
        present(secondController, animated: true)
    }
    
}

