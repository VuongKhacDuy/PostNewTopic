//
//  ExperienceTopicView.swift
//  AztecExample
//
//  Created by hahalolo on 4/22/20.
//  Copyright © 2020 Automattic Inc. All rights reserved.
//

import Foundation
import UIKit
class ExperienceTopicView: UIView {
    @IBOutlet var experienceTopicImageView: UIView!
    
    // step 2: init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    // step 3:
    private func commonInit() {
        // load nib first
        Bundle.main.loadNibNamed("ExperienceView", owner: self, options: nil)
        
        // add view from nib
        self.addSubview(self.experienceTopicImageView)
        
//        // add constraints
        self.experienceTopicImageView.translatesAutoresizingMaskIntoConstraints = false
        self.experienceTopicImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.experienceTopicImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.experienceTopicImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.experienceTopicImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
}
