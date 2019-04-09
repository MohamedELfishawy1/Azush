//
//  TwitterVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/27/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class TwitterVC: UIViewController {

    @IBOutlet weak var mywebview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL (string:  "https://twitter.com/HospitalAlazhar");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
        
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UINavigationController") as! UINavigationController
        self.present(vc, animated: true, completion: nil)
    }
    }
    


