//
//  CameraBoundryMapView.swift
//  iOS13MapKit
//
//  Created by Arun Rathore on 26/12/23.


import SwiftUI
import MapKit

struct CameraBoundaryMapView: UIViewRepresentable {

    func updateUIView(_ view: MKMapView, context: Context){

        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(
        latitude: 28.644800, longitude: 77.216721), latitudinalMeters: 500, longitudinalMeters: 500)
                view.setCameraZoomRange(MKMapView.CameraZoomRange(minCenterCoordinateDistance: 500, maxCenterCoordinateDistance: 2000), animated: true)

        view.cameraBoundary = MKMapView.CameraBoundary(coordinateRegion: region)
    }
    func makeUIView(context: Context) -> MKMapView{
         MKMapView(frame: .zero)
    }
}
