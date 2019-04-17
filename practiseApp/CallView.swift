//
//  CallView.swift
//  practiseApp
//
//  Created by iMac on 4/17/19.
//  Copyright © 2019 iMac. All rights reserved.
//

import UIKit

class CallView: UIView {
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func draw(_ rect: CGRect) {
        super.draw(_: rect);
  
        let context = UIGraphicsGetCurrentContext();
        context?.setFillColor(UIColor.init(red: 39/255, green: 121/255, blue: 254/255, alpha: 1.0).cgColor);
        let topHalf = round(frame.width/2 + frame.width/10);
        let botHalf = round(frame.width/2 - frame.width/10);
        context?.move(to: CGPoint(x:0, y:0));
        context?.addLine(to: CGPoint(x: topHalf, y: 0))
        context?.addLine(to: CGPoint(x: botHalf, y: frame.height))
        context?.addLine(to: CGPoint(x: 0, y: 100))
        context?.addLine(to: CGPoint(x: 0, y: 0))
        context?.closePath();
        context?.fillPath()
        context?.setFillColor(UIColor.init(red: 63/255, green: 135/255, blue: 254/255, alpha: 1.0).cgColor);
        
        context?.move(to: CGPoint(x: topHalf - 1, y: 0))
        context?.addLine(to: CGPoint(x: botHalf - 1, y: frame.height))
        context?.addLine(to: CGPoint(x: frame.width, y: frame.height))
        context?.addLine(to: CGPoint(x: frame.width, y: 0))
        context?.addLine(to: CGPoint(x: topHalf, y: 0))
        context?.closePath();
        context?.fillPath()
       
    }
   

}
