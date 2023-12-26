//
//  MapView.swift
//  iOS13MapKit
//
//  Created by Arun Rathore on 26/12/23.


import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    @Binding var selectedLandmark : Int
    
    func updateUIView(_ view: MKMapView, context: Context){
        
        let coordinate = CLLocationCoordinate2D(
            latitude: 12.9352, longitude: 77.6244)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        
        switch selectedLandmark {
            case 0:
                view.pointOfInterestFilter = .some(MKPointOfInterestFilter(including: [.restaurant, .park]))
            case 1:
                view.pointOfInterestFilter = .some(MKPointOfInterestFilter(including: [.brewery]))
            default:
                view.pointOfInterestFilter = .some(MKPointOfInterestFilter(including: []))
        }
    }
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
}
