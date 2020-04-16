//
//  TagUser.swift
//  CustomEditor
//
//  Created by hahalolo on 4/15/20.
//  Copyright © 2020 hahalolo. All rights reserved.
//

import UIKit

class TagUser: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var lbWith: UILabel!
    @IBOutlet weak var tfTagUser: UITextField!
    
    override init(frame: CGRect) {
        super.init (frame:frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("tagUserView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }
}
