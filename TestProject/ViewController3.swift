//
//  ViewController3.swift
//  TestProject
//
//  Created by dtc on 17/12/2561 BE.
//  Copyright © 2561 dtc. All rights reserved.
//

import UIKit

class ViewController3: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var Fname: UILabel!
    @IBOutlet weak var Lname: UILabel!
    @IBOutlet weak var Nname: UILabel!
    @IBOutlet weak var Lage: UILabel!
    @IBOutlet weak var Lmail: UILabel!
    var listname = ["BOSS","BEEM","KUNG","TAK"]
    var listtitle = ["test","test","tset","test"]
    var listpiture = ["testimage", "testimage", "testimage", "testimage"]
    static var fName: String?
    static var lName: String?
    static var nName: String?
    static var aGe: String?
    static var eMail: String?
    static var dataString: [String] = []
    
    @IBOutlet weak var Tname: UITextField!
    @IBOutlet weak var Stitle: UITextField!
    @IBOutlet weak var Timage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Fname.text = ViewController3.dataString[0]
        Lname.text = ViewController3.dataString[1]
        Nname.text = ViewController3.dataString[2]
        Lage.text = ViewController3.dataString[3]
        Lmail.text = ViewController3.dataString[4]
        listname.append(ViewController3.dataString[0])
    }
    
    static func Getdata(ffname:String,llname:String,nname:String,aage:String,mmail:String){
        dataString.append(ffname)
        dataString.append(llname)
        dataString.append(nname)
        dataString.append(aage)
        dataString.append(mmail)
        print(dataString)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listpiture.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var myCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        myCell.textLabel?.text = listname[indexPath.row]
        myCell.detailTextLabel?.text = listtitle[indexPath.row]
        myCell.imageView?.image = UIImage(named: listpiture[indexPath.row])
        return myCell
    }
    
    
    @IBAction func backpage(_ sender: Any) {
        
    }
    
    
    @IBAction func Savedata(_ sender: Any) {
        
        if Tname.text?.isEmpty ?? true{
            print("username nil")
        }
        else {
            print("Ok")
        }
            
        
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


