//
//  ViewController.swift
//  Messenger
//
//  Created by Denis Kravchenko on 03/11/2018.
//  Copyright © 2018 Denis Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelOption: UILabel!
    @IBOutlet var background: UIView!
    @IBOutlet weak var switchNight: UISwitch!
    @IBOutlet weak var night: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func chonoff(_ sender: Any) {
        if(switchNight.isOn){
            background.backgroundColor = UIColor.black
            labelOption.textColor = UIColor.white
            night.textColor = UIColor.white
            UIApplication.shared.statusBarStyle = .lightContent
        }else{
            background.backgroundColor = UIColor.white
            labelOption.textColor = UIColor.black
            night.textColor = UIColor.black
            UIApplication.shared.statusBarStyle = .default
        }
    }
    
}

