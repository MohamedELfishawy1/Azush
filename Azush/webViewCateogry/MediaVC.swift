//
//  MediaVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/26/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class MediaVC: UIViewController {
    @IBOutlet weak var mywebview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL (string:  "http://www.azush.org/main/app-news/");
        let requestObj = NSURLRequest(url: url! as URL);
       mywebview.loadRequest(requestObj as URLRequest);
    }
    

    @IBAction func backBTn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UINavigationController") as! UINavigationController
        self.present(vc, animated: true, completion: nil)
    }
    

}
