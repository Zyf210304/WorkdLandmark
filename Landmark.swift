//
//  LandMark.swift
//  WorkdLandmark
//
//  Created by 亚飞 on 2021/1/9.
//

import SwiftUI


struct Landmark : Identifiable {
    var id = UUID()
    var name: String
    var EnglishName: String
    var location: String
    
    var imageName: String {return EnglishName}
    var thumbnailName: String {return "\(EnglishName)(thumb)"}
    
}


let landmarks = [
    Landmark(name: "长城", EnglishName: "lgd", location: "北京"),
    Landmark(name: "大本钟", EnglishName: "lgd", location: "伦敦"),
    Landmark(name: "泰姬陵", EnglishName: "lgd", location: "阿拉伯"),
]
