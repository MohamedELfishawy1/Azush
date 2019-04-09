//
//  FaceBookVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/27/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class FaceBookVC: UIViewController,UIWebViewDelegate {
 var type=""
        var mystring = String()
    @IBOutlet weak var mywebview: UIWebView!
    @IBOutlet weak var activator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mywebview.delegate = self
        
        print("type of segue is \(type)")
        
        
        if type == "face"{
            loadFaceData()
        }
        else if type == "you"{
            loadYoutubeData()
        }else{
            loadTwitterData()
        }
     
        
    }
    

    @IBAction func backBtn(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "UINavigationController") as! UINavigationController
//        self.present(vc, animated: true, completion: nil)
        dismiss(animated: true, completion: nil)
    }
      func loadFaceData()  {
        let url = NSURL (string:  "https://www.facebook.com/alazhrhospital");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
    }
    func loadYoutubeData()  {
    let url = NSURL (string:  "https://www.youtube.com/channel/UC_ap8Ye1coNJH_iYSW3II9g");
    let requestObj = NSURLRequest(url: url! as URL);
    mywebview.loadRequest(requestObj as URLRequest);
    }
     func loadTwitterData()  {
        
        let url = NSURL (string:  "https://twitter.com/HospitalAlazhar");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
        
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activator.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activator.stopAnimating()
    }
    }
    


