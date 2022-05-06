//
//  ViewModel.swift
//  GeoApp
//
//  Created by cmStudent on 2022/05/06.
//

import Foundation

class ContentViwModel: ObservableObject {
    
    func inNumImage(nowY : Double, nowX: Double, width: Double) -> String {
        var imageName: String
        let processY = floor(nowY / 10)
        
        
        if processY.truncatingRemainder(dividingBy: 2.0) == 0 {
            imageName = "neko_a"
        } else {
            imageName = "neko_b"
        }
        
        if nowX < (width / 2) {
            imageName += "_R"
        } else {
            imageName += "_L"
        }
        
        return imageName
    }
    
}
