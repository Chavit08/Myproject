//
//  ViewController3.swift
//  TestProject
//
//  Created by dtc on 17/12/2561 BE.
//  Copyright © 2561 dtc. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var Fname: UILabel!
    @IBOutlet weak var Lname: UILabel!
    @IBOutlet weak var Nname: UILabel!
    @IBOutlet weak var Lage: UILabel!
    @IBOutlet weak var Lmail: UILabel!
    
    static var fName: String?
    static var lName: String?
    static var nName: String?
    static var aGe: String?
    static var eMail: String?
    static var dataString: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Fname.text = ViewController3.dataString[0]
        Lname.text = ViewController3.dataString[1]
        Nname.text = ViewController3.dataString[3]
        Lage.text = ViewController3.dataString[4]
        Lmail.text = ViewController3.dataString[5]
    }
    
    static func Getdata(ffname:String,llname:String,nname:String,aage:String,mmail:String){
        dataString.append(ffname)
        dataString.append(llname)
        dataString.append(nname)
        dataString.append(aage)
        dataString.append(mmail)
        print(dataString)
        
    }
    
    
        
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


