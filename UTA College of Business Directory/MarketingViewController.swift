//
//  MarketingViewController.swift
//  UTA College of Business Directory
//
//  Created by David Nguyen on 12/5/16.
//  Copyright © 2016 chickenFeet. All rights reserved.
//

import UIKit

class MarketingViewController: UIViewController, UIPickerViewDataSource , UIPickerViewDelegate {

    @IBOutlet weak var marketingPicker: UIPickerView!
    
    var marketingData = ["Fernando Jaramillo, Ph.D., Chair","Ritesh Saini, PhD Student Advisor","Laura Wilcox, Administrative Assistant", "Myalinda Martinez, Support Specialist"]
    var select = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return marketingData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return marketingData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        select = row

    }
    
    @IBAction func marketingButton(_ sender: Any) {
        if (select == 0)
        {
            // Fernando Jaramillo
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/jorge-jaramillo")!, options: [:])
        }
        else if (select == 1){
            // Ritesh Saini
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/ritesh-saini")!, options: [:])
        }
        else if (select == 2){
            //  Laura Wilcox
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/marketing/administration.html")!, options: [:])
        }
        else if (select == 2){
            //  Myalinda Martinez
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/marketing/administration.html")!, options: [:])
        }
    }

}
