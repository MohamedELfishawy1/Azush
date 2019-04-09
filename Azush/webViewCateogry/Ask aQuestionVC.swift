//
//  Ask aQuestionVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/26/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class Ask_aQuestionVC: UIViewController,UIWebViewDelegate {
   var type=""
      var mystring = String()
    var name = ""
    @IBOutlet weak var titleLbl: UILabel!
 
    
    
    @IBOutlet weak var activator: UIActivityIndicatorView!
    @IBOutlet weak var myweb: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //titleLbl.text = "Ask Question"
        titleLbl.text! = name
        myweb.delegate = self

        

//        let url = NSURL (string:"http://www.azush.org/main/app-ask/");
//        let requestObj = NSURLRequest(url: url! as URL);
//        myweb.loadRequest(requestObj as URLRequest);
      print("type of segue is \(type)")
//
//
        if type == "a"{
            loadAskQuestionData()
        }
        else if type == "f"{
            loadFeedbackData()
        }else if type == "A"{
            loadAppointmentData()
        }else if type == "fi"{
          loadFindDoctorData()
        }else if type == "c"{
           loadContect()

        }else{
            loadAbout()
        }

     
      
        
    }
        
    

    
    @IBAction func back(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "UINavigationController") as! UINavigationController
//        self.present(vc, animated: true, completion: nil)
        dismiss(animated: true, completion: nil)
    }
    func loadAskQuestionData()  {
        let url = NSURL (string:"http://www.azush.org/main/app-ask/");
        let requestObj = NSURLRequest(url: url! as URL);
        myweb.loadRequest(requestObj as URLRequest);
    }
    func loadFeedbackData()  {
        let url = NSURL (string:"http://www.azush.org/main/app-feedback/");
        let requestObj = NSURLRequest(url: url! as URL);
        myweb.loadRequest(requestObj as URLRequest);
    }
    func loadAppointmentData()  {

        let url = NSURL (string:"http://www.azush.org/main/app-booking/");
        let requestObj = NSURLRequest(url: url! as URL);
        myweb.loadRequest(requestObj as URLRequest);

    }
    func loadFindDoctorData()  {

        let url = NSURL (string:"http://www.azush.org/main/app-doctors/");
        let requestObj = NSURLRequest(url: url! as URL);
        myweb.loadRequest(requestObj as URLRequest);

    }
    func loadContect()  {

        let url = NSURL (string:"http://www.azush.org/main/app-contact/");
        let requestObj = NSURLRequest(url: url! as URL);
        myweb.loadRequest(requestObj as URLRequest);

    }
    func loadAbout()  {

        let url = NSURL (string:"http://www.azush.org/main/app-about/");
        let requestObj = NSURLRequest(url: url! as URL);
        myweb.loadRequest(requestObj as URLRequest);

    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        activator.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activator.stopAnimating()
    }
  
    
}
