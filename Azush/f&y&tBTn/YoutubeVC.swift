//
//  YoutubeVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/27/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class YoutubeVC: UIViewController {

    @IBOutlet weak var mywebview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UINavigationController") as! UINavigationController
        self.present(vc, animated: true, completion: nil)
    }
    
  

}
