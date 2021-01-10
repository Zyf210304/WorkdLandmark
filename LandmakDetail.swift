//
//  LandmakDetail.swift
//  WorkdLandmark
//
//  Created by 亚飞 on 2021/1/10.
//

import SwiftUI

struct LandmakDetail: View {
    
    let landmark: Landmark
    @State var zoomed = false
    
    //
    var body: some View {
        ZStack (alignment:.bottomTrailing){
            Image(landmark.EnglishName)
                .resizable()
                .aspectRatio(contentMode:zoomed ? .fill : .fit)
                .navigationBarTitle(Text(landmark.name), displayMode: .inline)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .onTapGesture {
                    withAnimation() {
                        zoomed.toggle()
                    }
                }
            
            if !zoomed {
                Text(landmark.location)
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.secondary)
                    .transition(.move(edge: zoomed ? .trailing :  .trailing))
            }
            
                
        }
    }
    
}

struct LandmakDetail_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView {
            LandmakDetail(landmark: landmarks[0])
//        }
    }
}

struct DetailTopImg: View {
    
    @State var zoomed : Bool
    let landmark : Landmark
    
    var body: some View {
        Image(landmark.EnglishName)
            .resizable()
            .aspectRatio(contentMode:zoomed ? .fill : .fit)
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .onTapGesture {
                withAnimation() {
                    zoomed.toggle()
                }
                
            }
    }
}
