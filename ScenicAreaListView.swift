//
//  ScenicAreaListView.swift
//  WorkdLandmark
//
//  Created by 亚飞 on 2021/1/9.
//

import SwiftUI

struct ScenicAreaListView: View {
    
    let landmark: Landmark
    
    var body: some View {
        
        HStack {
            Image(systemName: "photo")
            VStack {
                Text(landmark.name)
                Text(landmark.location)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        
    }
}

struct ScenicAreaListView_Previews: PreviewProvider {
    static var previews: some View {
        ScenicAreaListView(landmark: landmarks[0])
    }
}
