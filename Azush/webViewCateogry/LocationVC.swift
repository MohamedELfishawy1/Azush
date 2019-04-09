//
//  LocationVC.swift
//  Azush
//
//  Created by Ahmed zaid on 3/26/19.
//  Copyright © 2019 Ahmed zaid. All rights reserved.
//

import UIKit
import MapKit

class custompin: NSObject,MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    init(pintitle:String,pinsubtitle:String,location:CLLocationCoordinate2D) {
        self.title = pintitle
        self.subtitle = pinsubtitle
        self.coordinate = location
    }
    
    
}

class LocationVC: UIViewController,MKMapViewDelegate {

   
    @IBOutlet weak var mymapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let Location = CLLocationCoordinate2D(latitude: 30.054533, longitude: 31.314158)
        let Region = MKCoordinateRegion(center: Location, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        self.mymapview.setRegion(Region, animated: true)
        let pin = custompin(pintitle: "Al-AZuhar University Special Hospital", pinsubtitle: "Cairo", location: Location)
        self.mymapview.addAnnotation(pin)
        self.mymapview.delegate = self

      
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        let annoutotionview = MKAnnotationView(annotation: annotation, reuseIdentifier: "costomunation")
        annoutotionview.image = UIImage(named:"pin")
        annoutotionview.canShowCallout = true
        return annoutotionview
    }
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("annotion title == \(String(describing:view.annotation?.title!))")
    }
    

    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UINavigationController") as! UINavigationController
        self.present(vc, animated: true, completion: nil)
    }
   
}
