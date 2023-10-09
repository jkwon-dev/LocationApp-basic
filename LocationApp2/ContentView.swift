//
//  ContentView.swift
//  LocationApp2
//
//  Created by kwon eunji on 2023/10/03.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @ObservedObject private var locationManger = LocationManager()
    
    var body: some View {
        
        let coordinate = self.locationManger.location != nil ? self.locationManger.location?.coordinate : CLLocationCoordinate2D()
        
       
        return VStack {
            Text("latitude: \(coordinate!.latitude), longitude: \(coordinate!.longitude)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
