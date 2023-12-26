//
//  PolyLineMapView.swift
//  iOS13MapKit
//
//  Created by Arun Rathore on 26/12/23.


import SwiftUI
import MapKit

struct PolylineMapView: UIViewRepresentable {
    func makeCoordinator() -> MapViewCoordinator{
         return MapViewCoordinator(self)
    }

    func updateUIView(_ view: MKMapView, context: Context){

        view.delegate = context.coordinator
        let b2MLocation = [CLLocationCoordinate2D(
        latitude: 28.644800, longitude: 77.216721), CLLocationCoordinate2D(
        latitude: 28.644800, longitude: 77.216721)]
        let m2DLocation = [CLLocationCoordinate2D(
        latitude: 28.644800, longitude: 77.216721),
                           CLLocationCoordinate2D(latitude: 28.644800, longitude: 77.216721)]
        let d2BLocation = [CLLocationCoordinate2D(latitude: 28.644800, longitude: 77.216721),
                           CLLocationCoordinate2D(
                           latitude: 28.644800, longitude: 77.216721)]

        let polyline1 = MKPolyline(coordinates: b2MLocation, count: b2MLocation.count)
        let polyline2 = MKPolyline(coordinates: m2DLocation, count: m2DLocation.count)
        let polyline3 = MKPolyline(coordinates: d2BLocation, count: d2BLocation.count)
        view.addOverlays([polyline1, polyline2, polyline3])
    }

    func makeUIView(context: Context) -> MKMapView{
         MKMapView(frame: .zero)
    }
}
