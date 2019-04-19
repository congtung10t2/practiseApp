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
    var check : Bool = true;
    var height = CGFloat(0);
    @IBOutlet weak var commandView: UIView!
    @IBOutlet weak var cmHeight: NSLayoutConstraint!
    @IBOutlet weak var titleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let map = MFMapView(frame: mapView.frame)
        mapView = map;
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tapGesture.numberOfTapsRequired = 1;
    
        self.titleView.addGestureRecognizer(tapGesture);
        height = cmHeight.constant;
        // Do any additional setup after loading the view.
    }
    @objc func handleTap() {
        check = !check;
        self.refreshView();
    }
    private func refreshView(){

        UIView.animate(withDuration: 0.7, animations: {
           // self.cmHeight.constant = self.height - (self.commandView.center.y - origin_Y/self.height);
            self.cmHeight.constant = self.check ? 0 : self.height;
            self.view.layoutIfNeeded()
            
        })
        
        
        
    }
    


}

