//
//  FeedBackVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/26/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit

class FeedBackVC: UIViewController {

    @IBOutlet weak var mywebview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL (string:  "http://www.azush.org/main/app-feedback/");
        let requestObj = NSURLRequest(url: url! as URL);
        mywebview.loadRequest(requestObj as URLRequest);
    }
    

    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UINavigationController") as! UINavigationController
        self.present(vc, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
