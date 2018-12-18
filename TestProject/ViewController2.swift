//
//  ViewController2.swift
//  TestProject
//
//  Created by dtc on 17/12/2561 BE.
//  Copyright © 2561 dtc. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var TextFname: UITextField!
    @IBOutlet weak var TextLname: UITextField!
    @IBOutlet weak var TextNickname: UITextField!
    @IBOutlet weak var TextAge: UITextField!
    @IBOutlet weak var TextEmail: UITextField!
    @IBOutlet weak var ButtonOK: UIButton!
    @IBOutlet weak var showdatas: UILabel!
    @IBOutlet weak var showstring: UILabel!

    var texts:String?
    var fnames: String?
    var lnames: String?
    var nums: String="Boss"
    @IBOutlet weak var ShowLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ShowLabel.text = texts
        
    }
    @IBAction func ClickOK(_ sender: Any) {
        fnames = self.TextFname.text
        lnames = self.TextLname.text
        print(fnames)
        showname(name: fnames!)

        var a:String = datareturn(num: nums)
        print(a)
        showstring.text = a
    }
    func showname(name:String){
        var sss  = name
        print(sss)
        showdatas.text = sss
    }
    func datareturn(num:String)-> String{
        var message = "Hello" + num + "!!"
        return message
        
    }
}
