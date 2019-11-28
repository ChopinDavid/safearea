//
//  ViewController.swift
//  StackOverflow
//
//  Created by David G Chopin on 4/19/19.
//  Copyright © 2019 David G Chopin. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let a = "5:37:56 AM".UTCToLocal(incomingFormat: "h:mm:ss a", outgoingFormat: "HH:mm", location: CLLocation(latitude: 38.627003, longitude: -90.199402))
    }
}


