//
//  leftpadding.swift
//  Egypt Key
//
//  Created by Ahmed zaid on 3/12/19.
//  Copyright © 2019 Pixel. All rights reserved.
//

import UIKit

class leftpadding: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        didSet {
            layer.shadowColor = shadowColor?.cgColor
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0 {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize.zero{
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        func leftImage(image: UIImage, renderMode: UIImage.RenderingMode) {
            self.setImage(image.withRenderingMode(renderMode), for: .normal)
            self.imageEdgeInsets = UIEdgeInsets(top: 020, left: 0, bottom: 20, right: 20)
            self.contentHorizontalAlignment = .left
            self.imageView?.contentMode = .scaleAspectFit
    }

}
}
