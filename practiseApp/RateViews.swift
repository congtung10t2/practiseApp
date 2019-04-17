//
//  RateViews.swift
//  practiseApp
//
//  Created by iMac on 4/16/19.
//  Copyright © 2019 iMac. All rights reserved.
//

import UIKit

class RateViews: UIView {
    var check : Bool = false;
    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var starFull: UIImageView!
    
    @IBOutlet var contentView: UIView!
    private func setupView() {
        Bundle.main.loadNibNamed("RateViews", owner: self, options: nil);
        addSubview(contentView);
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tapGesture.numberOfTapsRequired = 1;
        // 2. add the gesture recognizer to a view
        contentView.addGestureRecognizer(tapGesture)
        refreshView();
    }
    private func refreshView(){
        starFull.alpha = check ? 1 : 0;
        star.alpha = 1 - starFull.alpha;
    }
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        setupView();
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupView();
    }
    @objc func handleTap() {
        check = !check;
        self.refreshView();
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
