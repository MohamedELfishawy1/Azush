//
//  HomeVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/25/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit
import WebKit

class HomeVC: UIViewController {
   // var urlString: String = ""
   
   
    @IBOutlet weak var Book: leftpadding!
    @IBOutlet weak var btnchange: leftpadding!
    @IBOutlet weak var collectionviewHome: UICollectionView!
    
    @IBOutlet weak var leadingConstrian: NSLayoutConstraint!
    @IBOutlet weak var ListMenuView: UIView!
     var menuShowing = false
    var imageImagess = [#imageLiteral(resourceName: "support"), #imageLiteral(resourceName: "feedback"), #imageLiteral(resourceName: "Rectangle 1"), #imageLiteral(resourceName: "Rectangle 1-2"), #imageLiteral(resourceName: "facebook-placeholder-for-locate-places-on-maps"), #imageLiteral(resourceName: "Rectangle 1-1"),#imageLiteral(resourceName: "Rectangle 1-3"), #imageLiteral(resourceName: "language")]
    let titleCateogry = ["Ask a Question","feedback","Appointment","Find a Doctor","Location","Contact us","About us","العربيه"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        ListMenuView.layer.shadowRadius = 6
        ListMenuView.layer.shadowOpacity = 1
    }
    @IBAction func outpatientclinics(_ sender: Any) {
      performSegue(withIdentifier: "toout", sender: nil)
    }
    @IBAction func BookAppointment(_ sender: Any) {
       
       performSegue(withIdentifier: "toBook", sender: nil)

    }
    @IBAction func FindDoctor(_ sender: Any) {
      performSegue(withIdentifier: "tofind", sender: nil)
    }
    
    @IBAction func specilaistBTn(_ sender: Any) {
       performSegue(withIdentifier: "tosp", sender: nil)
    }
    @IBAction func NewsBtn(_ sender: Any) {
       performSegue(withIdentifier: "tonews", sender: nil)
        
    }
    
    @IBAction func MediaBTn(_ sender: Any) {
     performSegue(withIdentifier: "toMe", sender: nil)
    }
    @IBAction func CareersBTn(_ sender: Any) {
        performSegue(withIdentifier: "toC", sender: nil)
        
    }
    @IBAction func ContectBtn(_ sender: Any) {
       performSegue(withIdentifier: "tocontect", sender: nil)
        
    }
    @IBAction func faceBook(_ sender: Any) {
       performSegue(withIdentifier: "toFace", sender: nil)
        
    }
    
    @IBAction func YoutubeBTn(_ sender: Any) {
        performSegue(withIdentifier: "toyou", sender: nil)
        
    }
    @IBAction func TwitterBTn(_ sender: Any) {
          performSegue(withIdentifier: "twitter", sender: nil)
     
    }
    @IBAction func changeLanguage(_ sender: UIButton) {
        Alert(title: NSLocalizedString("Select Language", comment: "Select Language"), message: NSLocalizedString("Select Your  Language", comment: "Select Your  Language"))
        
        

    }
    
    private func changeLanguage(_ langCode:String){
        print(langCode)
        if Bundle.main.preferredLocalizations.first != langCode{
            let confirmAlertCtrl=UIAlertController(title: NSLocalizedString("restartTitle", comment: "restartTitle"), message: NSLocalizedString("restart", comment: "restart"), preferredStyle: .alert)
            
            let confirmAction=UIAlertAction(title: NSLocalizedString("close", comment: "close"), style: .destructive)
            { _ in
                UserDefaults.standard.set([langCode], forKey: "AppleLanguages")
                UserDefaults.standard.synchronize()
                exit(EXIT_SUCCESS)
            }
            confirmAlertCtrl.addAction(confirmAction)
            let cancel=UIAlertAction(title: NSLocalizedString("cancel", comment: "cancle"), style: .cancel, handler: nil)
            confirmAlertCtrl.addAction(cancel)
            present(confirmAlertCtrl, animated: true, completion: nil)
        }
    }
    func Alert(title:String,message:String)  {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Create the actions
        let ArabicAction = UIAlertAction(title: NSLocalizedString("Arabic", comment: "Arabic"), style: UIAlertAction.Style.default) {
            UIAlertAction in
            
            
            if Bundle.main.preferredLocalizations.first == "ar" {
                
                // AraButton.alpha=0
            }else{
                self.changeLanguage("ar")
               
            }
            
            
        }
        let EnglishAction = UIAlertAction(title: NSLocalizedString("English", comment: "English"), style: UIAlertAction.Style.cancel) {
            UIAlertAction in
            
            if Bundle.main.preferredLocalizations.first == "en" {
                
                //  AraButton.alpha=0
            }else{
                self.changeLanguage("en")
                
            }
            
        }
        
        // Add the actions
        alertController.addAction(ArabicAction)
        alertController.addAction(EnglishAction)
        
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
    }
    
    

    @IBAction func MenuBtn(_ sender: Any) {
        if (menuShowing){
            leadingConstrian.constant = -297
            
        }else{
            leadingConstrian.constant = 0
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
            
        }
        menuShowing = !menuShowing
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        
        
        
        
        if segue.identifier == "toFace"{
            let destination=segue.destination as! FaceBookVC
               destination.mystring = "FaceBook"
            destination.type="face"
        }else if segue.identifier == "toyou"{
            let destination=segue.destination as! FaceBookVC
              destination.mystring = "YouTube"
            destination.type="you"
            
        }else if segue.identifier == "toBook"{
            let destination=segue.destination as! SpecialistVC
           destination.mystring = "Book An Appointment"
            destination.type="book"
        }else if segue.identifier == "toout"{
            let destination=segue.destination as! SpecialistVC
              destination.mystring = "OutPatient Clinics"
            destination.type="out"
        }else if segue.identifier == "tofind"{
            let destination=segue.destination as! SpecialistVC
              destination.mystring = "Find a Doctor"
            destination.type="find"
        }else if segue.identifier == "tosp"{
            let destination=segue.destination as! SpecialistVC
              destination.mystring = "Specialist Units"
            destination.type="spical"
            
            //
            
        }else if segue.identifier == "Ask"{
                let destination=segue.destination as! Ask_aQuestionVC
                destination.type="a"
            
            }else if segue.identifier == "feedback"{
                let destination=segue.destination as! Ask_aQuestionVC
                destination.type="f"

            }else if segue.identifier == "Appoint"{
                let destination=segue.destination as! Ask_aQuestionVC
                destination.type="A"
            }else if segue.identifier == "find"{
                let destination=segue.destination as! Ask_aQuestionVC
                destination.type="fi"
            }else if segue.identifier == "contect"{
                let destination=segue.destination as! Ask_aQuestionVC
                destination.type="c"
            }else if segue.identifier == "About"{
                let destination=segue.destination as! Ask_aQuestionVC
                destination.type="aa"


           // }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        
        }else if segue.identifier == "tonews"{
                let destination=segue.destination as! SpecialistVC
              destination.mystring = "News and Events"
                destination.type="news"
        }else if segue.identifier == "toMe"{
            let destination=segue.destination as! SpecialistVC
              destination.mystring = "Media center"
            destination.type="Me"
        }else if segue.identifier == "toC"{
            let destination=segue.destination as! SpecialistVC
              destination.mystring = "Careers"
            destination.type="C"
        } else if segue.identifier == "tocontect"{
                    let destination=segue.destination as! SpecialistVC
              destination.mystring = "Contect  US"
                    destination.type="contect"
        }
            
        else{
            let destination=segue.destination as! FaceBookVC
             destination.mystring = "Twitter"
            destination.type="twitter"
        }
        
    }
    
   
            

    }

   
    
   


extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CategoryCellData.instance.results.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CateogrycellView",for: indexPath) as! CateogrycellView
        
     
     
        
        if indexPath.section == 0 {
            if indexPath.item == 0 {
             cell.titleLbl.text = titleCateogry[indexPath.row]
                cell.imageHome.image = imageImagess[indexPath.row]
            }
            else if indexPath.item == 1 {
               
                cell.titleLbl.text = titleCateogry[indexPath.row]
                cell.imageHome.image = imageImagess[indexPath.row]
            }
            else if indexPath.item == 2 {
                cell.titleLbl.text = titleCateogry[indexPath.row]
                cell.imageHome.image = imageImagess[indexPath.row]
            }
            else if indexPath.item == 3 {
       
                cell.titleLbl.text = titleCateogry[indexPath.row]
                cell.imageHome.image = imageImagess[indexPath.row]
            }
            else if indexPath.item == 4 {
             
                cell.titleLbl.text = titleCateogry[indexPath.row]
                cell.imageHome.image = imageImagess[indexPath.row]
            }
            else if indexPath.item == 5 {
             
                cell.titleLbl.text = titleCateogry[indexPath.row]
                cell.imageHome.image = imageImagess[indexPath.row]
            }
            else if indexPath.item == 6 {
                
                cell.titleLbl.text = titleCateogry[indexPath.row]
                cell.imageHome.image = imageImagess[indexPath.row]
            }
            else if indexPath.item == 7 {
                
                cell.titleLbl.text = titleCateogry[indexPath.row]
                cell.imageHome.image = imageImagess[indexPath.row]
            }
           
            else {
            
                cell.titleLbl.text = titleCateogry[indexPath.row]
                cell.imageHome.image = imageImagess[indexPath.row]
            }
            
        }
        
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.collectionviewHome.frame.width - 25) / 2 , height: (self.collectionviewHome.frame.height - 28) / 3)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       let rc = storyboard?.instantiateViewController(withIdentifier: "Ask_aQuestionVC") as! Ask_aQuestionVC
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
       

       if indexPath.section == 0 {
           if indexPath.item == 0 {
              rc.name = titleCateogry[0]
  
            performSegue(withIdentifier: "Ask", sender: nil)
          
            //  }
            }
           else if indexPath.item == 1 {
               rc.name = titleCateogry[indexPath.row]
             performSegue(withIdentifier: "feedback", sender: nil)
//
            }
           else if indexPath.item == 2 {
             rc.name = titleCateogry[indexPath.row]
            performSegue(withIdentifier: "Appoint", sender: nil)

        }
           else if indexPath.item == 3 {
              rc.name = titleCateogry[indexPath.row]
             performSegue(withIdentifier: "find", sender: nil)

        }
           else if indexPath.item == 4 {
            let vc = storyBoard.instantiateViewController(withIdentifier: "LocationVC") as! LocationVC
            self.present(vc, animated: true) {
                rc.dismiss(animated: true, completion: nil)
            }
        }
           else if indexPath.item == 5 {
              rc.name = titleCateogry[indexPath.row]
             performSegue(withIdentifier: "contect", sender: nil)

        }
           else if indexPath.item == 6 {
               rc.name = titleCateogry[6]
            performSegue(withIdentifier: "About", sender: nil)

           }
          
           else if indexPath.item == 7 {
           
          
            
            if LocalizationSystem.sharedInstance.getLanguage() == "ar" {
                LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
                UIView.appearance().semanticContentAttribute = .forceLeftToRight
                               //HomeVC.preferences.basic.direction = .right
            }else {
                LocalizationSystem.sharedInstance.setLanguage(languageCode: "ar")
                UIView.appearance().semanticContentAttribute = .forceRightToLeft
                                //ListMenuView.preferences.basic.direction = .left
            }
            let str = LocalizationSystem.sharedInstance.localizedStringForKey(key: "Surgery", comment: "")
         
            let vc = storyBoard.instantiateInitialViewController()
            let key = UIApplication.shared.keyWindow!
            key.rootViewController = vc
            }
       
        }
        
      }
    }
//}
