//
//  ViewController.swift
//  Customizer
//
//  Created by Arsalan Wahid Asghar on 12/2/17.
//  Copyright © 2017 Arsalan Wahid Asghar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var _menuOpen = false
    var _devices = ["iphone 4/4s","iPhone 5c","iPhone 5/5s","iPhone SE","iPhone 6","iPhone 6 Plus","iPhone 6s","iPhone 6s Plus","iPhone7","iphone7 Plus","iPhone 8","iPhone 8 Plus","iPhone X"]
    var _placementAnswer = 0
    ///MARK:- Outlets
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var menu: UIBarButtonItem!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var deviceImage: UIImageView!
    
    //MARK:- UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
        pickerView.dataSource = self
        pickerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK:- UIPickerView
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return _devices[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return _devices.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            _placementAnswer = row
        
        if _placementAnswer == 0{
            deviceImage.image = UIImage(named: "iphone4")
        }else if _placementAnswer == 1{
            deviceImage.image = UIImage(named: "iphone5c")
        }else if _placementAnswer == 2{
            deviceImage.image = UIImage(named: "iphone5")
        }else if _placementAnswer == 3{
            deviceImage.image = UIImage(named: "iphonese")
        }else if _placementAnswer == 4{
            deviceImage.image = UIImage(named: "iphone6")
        }else if _placementAnswer == 5{
            deviceImage.image = UIImage(named: "iphone6plus")
        }else if _placementAnswer == 6{
            deviceImage.image = UIImage(named: "iphone6s")
        }else if _placementAnswer == 7{
            deviceImage.image = UIImage(named: "iphone6splus")
        }else if _placementAnswer == 8{
            deviceImage.image = UIImage(named: "iphone7")
        }else if _placementAnswer == 9{
            deviceImage.image = UIImage(named: "iphone7plus")
        }else if _placementAnswer == 10{
            deviceImage.image = UIImage(named: "iphone8")
        }else if _placementAnswer == 11{
            deviceImage.image = UIImage(named: "iphone8plus")
        }else if _placementAnswer == 12{
            deviceImage.image = UIImage(named: "iphonex")
        }else{
            deviceImage.image = UIImage(named: "iphone8")
        }
        
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
    
    @IBAction func customSkin(_ sender: UIButton) {
        if _placementAnswer == 0{
            deviceImage.image = UIImage(named: "iphone4")
        }else if _placementAnswer == 1{
            deviceImage.image = UIImage(named: "iphone5c")
        }else if _placementAnswer == 2{
            deviceImage.image = UIImage(named: "iphone5")
        }else if _placementAnswer == 3{
            deviceImage.image = UIImage(named: "iphonese")
        }else if _placementAnswer == 4{
            deviceImage.image = UIImage(named: "iphone6")
        }else if _placementAnswer == 5{
            deviceImage.image = UIImage(named: "iphone6plus")
        }else if _placementAnswer == 6{
            deviceImage.image = UIImage(named: "iphone6s")
        }else if _placementAnswer == 7{
            deviceImage.image = UIImage(named: "iphone6splus")
        }else if _placementAnswer == 8{
            deviceImage.image = UIImage(named: "iphone7")
        }else if _placementAnswer == 9{
            deviceImage.image = UIImage(named: "iphone7plus")
        }else if _placementAnswer == 10{
            deviceImage.image = UIImage(named: "iphone8")
        }else if _placementAnswer == 11{
            deviceImage.image = UIImage(named: "iphone8plus")
        }else if _placementAnswer == 12{
            deviceImage.image = UIImage(named: "iphonex")
        }else{
            deviceImage.image = UIImage(named: "iphone8")
        }
    
    }
    
    
}

