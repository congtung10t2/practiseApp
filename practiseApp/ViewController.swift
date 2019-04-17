//
//  ViewController.swift
//  practiseApp
//
//  Created by iMac on 4/16/19.
//  Copyright © 2019 iMac. All rights reserved.
//

import UIKit
import map4dsdk
class ViewController: UIViewController {
    @IBOutlet weak var mapView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let map = MFMapView(frame: mapView.frame)
        mapView = map;
        // Do any additional setup after loading the view.
    }


}

