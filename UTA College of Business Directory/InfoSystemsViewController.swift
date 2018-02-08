//
//  InfoSystemsViewController.swift
//  UTA College of Business Directory
//
//  Created by David Nguyen on 12/5/16.
//  Copyright © 2016 chickenFeet. All rights reserved.
//

import UIKit

class InfoSystemsViewController: UIViewController, UIPickerViewDataSource , UIPickerViewDelegate {

    @IBOutlet weak var infoSystemsPicker: UIPickerView!
    
    var infoSystemsData = ["Mary Whiteside, Chairman","Carolyn Davis, Assistant to the Chair","RadhaKanta Mahapatra, INSY Ph.D. Advisor", "Kay-Yut Chen, OPMA/STAT Ph.D. Advisor","Jennifer Hill, Administrative Assistant", "Ashton Jones, Administrative Assistant"]
    var select = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return infoSystemsData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return infoSystemsData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        select = row

    }
    @IBAction func insyButton(_ sender: Any) {
        if (select == 0)
        {
            // Mary Whiteside
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/mary-whiteside")!, options: [:])
        }
        else if (select == 1){
            // Carolyn Davis
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/carolyn-davis")!, options: [:])
        }
        else if (select == 2){
            // RadhaKanta Mahapatra
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/radha-mahapatra")!, options: [:])
        }
        else if (select == 3){
            // Kay-Yut Chen
            UIApplication.shared.open(URL(string: "https://www.uta.edu/profiles/kay-chen")!, options: [:])
        }
        else if (select == 4){
            // Jennifer Hill
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/insyopma/admin.html")!, options: [:])
        }
        else if (select == 5){
            // Ashton Jones
            UIApplication.shared.open(URL(string: "https://wweb.uta.edu/insyopma/admin.html")!, options: [:])
        }
    }


}
