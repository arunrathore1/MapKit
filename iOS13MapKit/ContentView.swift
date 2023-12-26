//
//  ContentView.swift
//  iOS13MapKit
//
//   Created by Arun Rathore on 26/12/23.

import SwiftUI
import MapKit

struct ContentView: View {

    var body: some View {
        //        PolylineMapView()
        CameraBoundaryMapView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
