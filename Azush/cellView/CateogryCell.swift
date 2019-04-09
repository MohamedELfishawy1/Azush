//
//  CateogryCell.swift
//  Azush
//
//  Created by Ahmed zaid on 3/25/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

struct CategoryCell {
    private(set) public var categoryName: String
    //    private(set) public var categoryDescription: String
    //    private(set) public var offersNumber: String
    private(set) public var categoryImage: UIImage
    
    init(label1: String, imageView: UIImage) {
        self.categoryName = label1
        //        self.categoryDescription = label2
        //        self.offersNumber = label3
        self.categoryImage = imageView
    }
}
