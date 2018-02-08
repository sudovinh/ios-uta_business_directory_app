//
//  AccountingViewController.swift
//  UTA College of Business Directory
//
//  Created by David Nguyen on 12/5/16.
//  Copyright © 2016 chickenFeet. All rights reserved.
//

import UIKit

class AccountingViewController: UIViewController, UIPickerViewDataSource , UIPickerViewDelegate {

    @IBOutlet weak var accountingPicker: UIPickerView!
    
    
    var accountingData = ["Jennifer Ho, P.H.D. , Chair","Sandra Bitenc, Assistant to the Chair","Cherie Henderson, Graduate Advisor", "Pam Wheaton, Admininstrative Assistant","Kim Van Arsdale, Support Specialist II"]
    var select = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return accountingData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return accountingData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        select = row

    }
    
    @IBAction func accountingButton(_ sender: Any) {
        if (select == 0)
        {
            // Jennifer Ho
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/li-chin-ho")!, options: [:])
        }
        else if (select == 1){
            // Sandra Bitenc
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/sandra-bitenc")!, options: [:])
        }
        else if (select == 2){
            // Cherie Henderson
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/sandra-henderson")!, options: [:])
        }
        else if (select == 3){
            // Pam Wheaton
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/accounting/admin.html")!, options: [:])
        }
        else if (select == 4){
            //Kim Van Arsdale
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/accounting/admin.html")!, options: [:])
        }
    }

    
    

}
