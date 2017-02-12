//
//  ViewController.swift
//  Creating Objects with Code
//
//  Created by Atıl Samancıoğlu on 27/01/2017.
//  Copyright © 2017 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myButton = UIButton()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    let width = view.frame.size.width
    let height = view.frame.size.height
        
    let myLabel = UILabel()
    myLabel.text = "My coding label!"
    myLabel.textAlignment = .center
    myLabel.frame = CGRect(x: width * 0.1, y: height * 0.3, width: width * 0.8 , height: 50)
    view.addSubview(myLabel)
    
        
        myButton.frame = CGRect(x: width * 0.2, y: height * 0.5, width: width * 0.6, height: 50)
        myButton.setTitle("myCoding Button", for: UIControlState.normal)
        myButton.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControlEvents.touchUpInside)
    

    }
    
    func myAction() {
        print("You have clicked my button")
        self.myButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
    }
    
    



}

