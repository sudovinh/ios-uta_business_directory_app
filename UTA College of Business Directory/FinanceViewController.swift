//
//  FinanceViewController.swift
//  UTA College of Business Directory
//
//  Created by David Nguyen on 12/5/16.
//  Copyright © 2016 chickenFeet. All rights reserved.
//

import UIKit

class FinanceViewController: UIViewController, UIPickerViewDataSource , UIPickerViewDelegate {

    @IBOutlet weak var financePicker: UIPickerView!
    
    var financeData = ["J. David Diltz, Ph.D., Chair","Debbie Maxey, Administrative Assistant","Teresa Sexton, Support Specialist"]
    var select = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return financeData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return financeData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        select = row

    }

    @IBAction func financeButton(_ sender: Any) {
        if (select == 0)
        {
            // John Diltz
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/john-diltz")!, options: [:])
        }
        else if (select == 1){
            // Debbi Maxey
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/finance/administration.html")!, options: [:])
        }
        else if (select == 2){
            // Teresa Sexton
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/finance/administration.html")!, options: [:])
        }

    }

}
