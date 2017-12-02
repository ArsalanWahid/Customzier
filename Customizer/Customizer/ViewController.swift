//
//  ViewController.swift
//  Customizer
//
//  Created by Arsalan Wahid Asghar on 12/2/17.
//  Copyright © 2017 Arsalan Wahid Asghar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var _menuOpen = false
    
    ///MARK:- Outlets
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    
    //MARK:- UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK:-Actions
    
    @IBAction func openMenu(_ sender: Any) {
        
        if _menuOpen{
        //Shows the side menu
        leadingConstraint.constant = -160
             UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }else{
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }
       
        _menuOpen = !_menuOpen
        
    }
    
}

