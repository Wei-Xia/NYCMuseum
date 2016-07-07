//
//  MapViewController.swift
//  NYCMuseum
//
//  Created by Wei Xia on 7/6/16.
//  Copyright © 2016 Wei Xia. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var museum: Museum!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        
//        mapView.showsTraffic = true
        mapView.showsUserLocation = true
//        mapView.showsCompass = true
        mapView.showsScale = true
//        mapView.showsBuildings = true
        
        // Convert address
        let geocoder = CLGeocoder()
        
        geocoder.geocodeAddressString(museum.location) { (placemarks, error) in
            if error != nil {
                print(error)
                return
            }
            
            if let placemarks = placemarks {
                let placemarks = placemarks[0]
                
                let annotation = MKPointAnnotation()
                annotation.title = self.museum.name
                annotation.subtitle = self.museum.type
                
                if let location = placemarks.location {
                    annotation.coordinate = location.coordinate
                    
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
            }
        }
    }
    
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let id = "pin"
        
        if annotation is MKUserLocation {
            return nil
        }
        
        var annotationView = self.mapView.dequeueReusableAnnotationViewWithIdentifier(id) as? MKPinAnnotationView
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: id)
            annotationView?.canShowCallout = true
        }
        
        let imageView = UIImageView(frame: CGRectMake(0, 0, 53, 53))
        
        imageView.image = UIImage(named: museum.image)
        
        annotationView?.leftCalloutAccessoryView = imageView
        
        annotationView?.pinTintColor = UIColor(red: 19/255, green: 52/255, blue: 96/255, alpha: 1)
        
        return annotationView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
