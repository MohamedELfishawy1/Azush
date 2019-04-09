//
//  SpecialistVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/26/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class SpecialistVC: UIViewController,UIWebViewDelegate {
var type=""
    var mystring = String()
    
    @IBOutlet weak var activator: UIActivityIndicatorView!
    @IBOutlet weak var activey: UIActivityIndicatorView!
    @IBOutlet weak var mywebview: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        mywebview.delegate = self as! UIWebViewDelegate
        
        titleLbl.text = mystring

        print("type of segue is \(type)")
        
        
        if type == "book"{
            loadBookAppointmentData()
        }
        else if type == "out"{
            loadoutpatientData()
        }else if type == "find"{
            loadFindDoctorData()
        }else if type == "spical"{
            loadSpicalistData()
        }else if type == "news"{
            loadNewsData()
        }else if type == "C"{
            loadCareersData()
        }else if type == "Me"{
            loadNewsData()
     
        }else{
            loadContectData()
        }
        
    }
  
    

    @IBAction func backBtn(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }
    func loadBookAppointmentData()  {
        let url = NSURL (string:"http://www.azush.org/main/app-booking/");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
    }
    func loadoutpatientData()  {
        let url = NSURL (string:"http://www.azush.org/main/app-outpatient-clinics/");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
    }
    func loadFindDoctorData()  {
        
        let url = NSURL (string:"http://www.azush.org/main/app-doctors/");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
        
    }
    func loadSpicalistData()  {
        
        let url = NSURL (string:"http://www.azush.org/main/app-specialist-units/");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
        
    }
    func loadNewsData()  {
        
        let url = NSURL (string:"http://www.azush.org/main/app-news/");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
        
    }
    
    func loadCareersData()  {
        
        let url = NSURL (string:"http://www.azush.org/main/app-career/");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
        
    }
    func loadContectData()  {
        
        let url = NSURL (string:"http://www.azush.org/main/app-contact/");
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
