//
//  DetailView.swift
//  practiseApp
//
//  Created by iMac on 4/16/19.
//  Copyright © 2019 iMac. All rights reserved.
//

import UIKit

class DetailView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var highlightedMessage: UITextView!
    override init(frame: CGRect) {
        super.init(frame: frame);
        setupView();
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        setupView();
    }
    private func setupView(){
        Bundle.main.loadNibNamed("DetailView", owner: self, options: nil);
        addSubview(contentView);
        self.avatar.layer.cornerRadius = self.avatar.frame.size.width/2;
        self.avatar.clipsToBounds = true;
        self.highlightedMessage.layer.cornerRadius = 15;
        self.highlightedMessage.layer.borderWidth = 1;
        self.highlightedMessage.layer.borderColor = UIColor.orange.cgColor;
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
