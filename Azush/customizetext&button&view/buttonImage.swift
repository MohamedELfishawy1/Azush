//
//  buttonImage.swift
//  Azush
//
//  Created by Ahmed zaid on 3/25/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class buttonImage: NSObject {
    class myButton : UIButton {
        override var isHighlighted: Bool {
            didSet {
                if (isHighlighted) {
                    self.backgroundColor = UIColor.blue
                } else {
                    self.backgroundColor = UIColor.white
                }
            }
        }
    }

}
