//
//  POIView.swift
//  iOS13MapKit
//
//  Created by Arun Rathore on 26/12/23.

import SwiftUI
import MapKit

struct POIContentView: View {
    var filterCategories = ["Restuarants And Parks", "Brewery"]
    @State private var selectedLandmark = 0

    var body: some View {
        return VStack{
            Picker(selection: $selectedLandmark, label: Text("")) {
                ForEach(0..<filterCategories.count) { index in
                    Text(self.filterCategories[index]).tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())
            MapView(selectedLandmark: $selectedLandmark)
        }
    }
}
