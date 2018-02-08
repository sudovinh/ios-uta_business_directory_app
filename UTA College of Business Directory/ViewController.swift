//
//  ViewController.swift
//  UTA College of Business Directory
//
//  Created by Vinh Nguyen on 11/29/16.
//  Copyright © 2016 chickenFeet. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var webView: UIWebView!

    
    
    var menuShowing = false
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let URLPath = URL(string: "https://www.facebook.com/UTABusiness/")
        let URLPathRequest = URLRequest(url: URLPath!)
        webView?.loadRequest(URLPathRequest)
        
      
        
    }
    
    
 
 
    @IBAction func openMenu(_ sender: Any)
    {
        //Drop shadow on menuView
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
        
        if (menuShowing) {
            leadingConstraint.constant = -160
        } else {
            leadingConstraint.constant = 0
            
            //animated slide
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
            
        }
        menuShowing = !menuShowing
        
    }



}




