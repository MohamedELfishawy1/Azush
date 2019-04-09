//
//  webViewVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/26/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit
import WebKit

class webViewVC: UIViewController, WKNavigationDelegate {
   var webView: WKWebView!
    @IBOutlet weak var mywebview: UIWebView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL (string:  "http://www.sourcefreeze.com");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);

    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//    if segue.identifier == "webViewVC"{
//
//
//
//
//
//    let destinationVC = segue.destination as! webViewVC
//    //            destinationVC.details = sender as!webViewVC
//    }
//    else if segue.identifier == "go"{
//        let url = NSURL (string:  "http://www.google.com");
//        let requestObj = NSURLRequest(url: url! as URL);
//        mywebview.loadRequest(requestObj as URLRequest);
//        let destinationVC = segue.destination as! webViewVC
//        //            destinationVC.details = sender as! Response
//        }
//    }
}
