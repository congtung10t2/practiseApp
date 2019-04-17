//
//  MapView.swift
//  practiseApp
//
//  Created by iMac on 4/17/19.
//  Copyright © 2019 iMac. All rights reserved.
//

import UIKit
import map4dsdk
class MapView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
     
     */
    @IBOutlet var viewContent: UIView!
    @IBOutlet weak var mapContent: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame);
        setup();
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        setup();
    }
    private func setup(){
        Bundle.main.loadNibNamed("MapView", owner: self, options: nil);
        
        addSubview(viewContent);
        let map = MFMapView(frame: mapContent.frame)
        mapContent = map;
    }

}
