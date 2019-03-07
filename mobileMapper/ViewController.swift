//
//  ViewController.swift
//  mobileMapper
//
//  Created by Samuel Schuffler on 3/6/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//
// Sam is Super Cool
import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    @IBOutlet weak var whenSearchButtonPressed: UIBarButtonItem!
    @IBOutlet weak var whenZoomButtonPressed: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
    }

}

