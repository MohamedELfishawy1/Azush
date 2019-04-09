//
//  outpatientVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/26/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class outpatientVC: UIViewController {
    @IBOutlet weak var mywebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL (string:  "http://www.azush.org/main/app-outpatient-clinics/");
        let requestObj = NSURLRequest(url: url! as URL);
       mywebView.loadRequest(requestObj as URLRequest);
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UINavigationController") as! UINavigationController
        self.present(vc, animated: true, completion: nil)
    }
    
    

}
