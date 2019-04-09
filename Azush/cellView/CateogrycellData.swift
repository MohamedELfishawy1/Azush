//
//  CateogrycellData.swift
//  Azush
//
//  Created by Ahmed zaid on 3/25/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import Foundation

class CategoryCellData {
    static let  instance = CategoryCellData()
    
    let results = [
        
        CategoryCell(label1: "feedback", imageView: #imageLiteral(resourceName: "feedback")),
        CategoryCell(label1: "Ask a Question", imageView: #imageLiteral(resourceName: "support")),
        CategoryCell(label1: "ِFind a Doctor", imageView: #imageLiteral(resourceName: "Rectangle 1-2")),
          CategoryCell(label1: "Appointment", imageView: #imageLiteral(resourceName: "Rectangle 1")),
        CategoryCell(label1: "Contact us", imageView: #imageLiteral(resourceName: "Rectangle 1-1")),
          CategoryCell(label1: "Location", imageView: #imageLiteral(resourceName: "facebook-placeholder-for-locate-places-on-maps")),
        CategoryCell(label1: "العربيه", imageView: #imageLiteral(resourceName: "language")),
          CategoryCell(label1: "About us", imageView: #imageLiteral(resourceName: "Rectangle 1-3")),
        
    ]
    
    func getData() -> [CategoryCell] {
        return results
    }
}
