//
//  MapViewCordinator.swift
//  iOS13MapKit
//
//  Created by Arun Rathore on 26/12/23.


import SwiftUI
import MapKit

class MapViewCoordinator: NSObject, MKMapViewDelegate {
    var mapViewController: PolylineMapView

    init(_ control: PolylineMapView) {
        self.mapViewController = control
    }

    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {

        if let multiPolyline = overlay as? MKMultiPolyline{
            let polylineRenderer = MKMultiPolylineRenderer(multiPolyline: multiPolyline)
            polylineRenderer.strokeColor = UIColor.blue.withAlphaComponent(0.5)
            polylineRenderer.lineWidth = 5
        }
        return MKOverlayRenderer(overlay: overlay)
    }
}
