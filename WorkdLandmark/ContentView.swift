//
//  ContentView.swift
//  WorkdLandmark
//
//  Created by 亚飞 on 2021/1/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            List(landmarks) { landmark in
                
                NavigationLink(
                    destination:  LandmakDetail(landmark: landmark)) {
                    ScenicAreaListView(landmark: landmark)
                    
                }
            }
            .navigationTitle("景点")
            
        }
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
