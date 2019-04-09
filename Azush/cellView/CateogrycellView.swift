//
//  CateogrycellView.swift
//  Azush
//
//  Created by Ahmed zaid on 3/25/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class CateogrycellView: UICollectionViewCell {
    var urlString: String = ""
    @IBOutlet weak var imageHome: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
//    @IBInspectable var cornerRadius: CGFloat = 0 {
//        didSet {
//            layer.cornerRadius = cornerRadius
//        }
//    }
//    
//    @IBInspectable var shadowColor: UIColor? {
//        didSet {
//            layer.shadowColor = shadowColor?.cgColor
//        }
//    }
//    
//    @IBInspectable var shadowRadius: CGFloat = 0 {
//        didSet {
//            layer.shadowRadius = shadowRadius
//        }
//    }
//    
//    @IBInspectable var shadowOpacity: Float = 0 {
//        didSet {
//            layer.shadowOpacity = shadowOpacity
//        }
//    }
//    
//    @IBInspectable var shadowOffset: CGSize = CGSize.zero{
//        didSet {
//            layer.shadowOffset = shadowOffset
//        }
//    }
    
    func updateView(categoryCell: CategoryCell) {
        titleLbl.text = categoryCell.categoryName
        //        categoryDescription.text = categoryCell.categoryDescription
        //        offersNumber.text = categoryCell.offersNumber
        imageHome.image = categoryCell.categoryImage
    }
    
}
