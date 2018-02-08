//
//  ManagementViewController.swift
//  UTA College of Business Directory
//
//  Created by David Nguyen on 12/5/16.
//  Copyright © 2016 chickenFeet. All rights reserved.
//

import UIKit

class ManagementViewController: UIViewController, UIPickerViewDataSource , UIPickerViewDelegate  {
    
    @IBOutlet weak var managementPicker: UIPickerView!

    var managementData = ["Abdul Rasheed, Department Chair","Nancy Morrel, Administrative Assistant","Quoc(Daniel)Nguyen, Support Specialist"]
    var select = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return managementData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return managementData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        select = row

    }

    @IBAction func manaButton(_ sender: Any) {
        if (select == 0)
        {
            // Abdul Rasheed
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/abdul-rasheed")!, options: [:])
        }
        else if (select == 1){
            // Nancy Morrel
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/management/admin.html")!, options: [:])
        }
        else if (select == 2){
            // Quoc Nguyen
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/management/admin.html")!, options: [:])
        }

    }
}
