//
//  String.swift
//  StackOverflow
//
//  Created by David G Chopin on 4/19/19.
//  Copyright © 2019 David G Chopin. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import TimeZoneLocate

class WTSettingsVC: UIViewController {
    
    
    @IBOutlet weak var checkBttn: DLRadioButton!
    @IBOutlet weak var checkBttn2: DLRadioButton!
    var switchON : Bool = false
    var button : Bool = false
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkBttn.isSelected = UserDefaults.standard.bool(forKey: "issaved")
        checkBttn2.isSelected = UserDefaults.standard.bool(forKey: "issaved")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        self.setCommonNavigationBar(title: "Settings", largeTitle: true, tranpernt: false, tint: WTConstant.LMColors.greenTheme, fontColor: .white)
        checkBttn?.isEnabled =  UserDefaults.standard.bool(forKey: "switchState")
        checkBttn?.addTarget(self, action: #selector(bttnAction(_:)), for: .touchUpInside)
    }
    
    @IBAction func bttnAction(_ sender: DLRadioButton) {
        if sender.tag == 1 {
            sender.isEnabled = true
            switchON = true
            defaults.set(switchON, forKey: "switchON")
            
            
        } else if sender.tag == 2 {
            sender.isEnabled = true
            switchON = false
            defaults.set(switchON, forKey: "switchON")
        }
        UserDefaults.standard.set(sender.isEnabled, forKey: "switchState")
        UserDefaults.standard.synchronize()
    }
}
