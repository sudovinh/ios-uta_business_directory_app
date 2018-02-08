//
//  EconomicsViewController.swift
//  UTA College of Business Directory
//
//  Created by David Nguyen on 12/5/16.
//  Copyright © 2016 chickenFeet. All rights reserved.
//

import UIKit

class EconomicsViewController: UIViewController, UIPickerViewDataSource , UIPickerViewDelegate{

    @IBOutlet weak var economicsPicker: UIPickerView!
    
    var economicsData = ["Dr. Roger Meiners, Department Chairman","Tim Wunder, Graduate Advisor","Barbara Sellers, Administrative Assistant", "Ginny Marzoni, Support Specialist II"]
    var select = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return economicsData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return economicsData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        select = row

    }

    @IBAction func economicsButton(_ sender: Any) {
        if (select == 0)
        {
            // Roger Meiners
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/roger-meiners")!, options: [:])
        }
        else if (select == 1){
            // Tim Wunder
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/timothy-wunder")!, options: [:])
        }
        else if (select == 2){
            // Barbara Sellers
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/economics/contacts.html")!, options: [:])
        }
        else if (select == 3){
            // Ginny Marzoni
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/economics/contacts.html")!, options: [:])
        }

    }

}
