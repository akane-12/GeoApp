//
//  ContentView.swift
//  GeoApp
//
//  Created by cmStudent on 2022/05/04.
//

import SwiftUI

struct ContentView: View {
    
    //ViewModel
    @ObservedObject var viewModel = ContentViwModel()
    
    
    var body: some View {
        
        
        ScrollView([.vertical, .horizontal], showsIndicators: false) {
            
            HStack {
                
                //横Spacer
                Spacer()
                    .frame(width: UIScreen.main.bounds.width / 1.3)
                
                
                VStack {
                    
                    //縦Spacer
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height / 1.3)
                    
                    GeometryReader { geometory in
                        
                        ZStack {
                            
                            Image(viewModel.inNumImage(nowY: geometory.frame(in: .global).origin.y,
                                                       nowX: geometory.frame(in: .global).origin.x,
                                                       width: UIScreen.main.bounds.width))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80)

                            
                        }
                    }
                    
                    //縦Spacer
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height / 1.1)
                    
                }
                
                //横Spacer
                Spacer()
                    .frame(width: UIScreen.main.bounds.width / 1.1)
            }
            
            
        }.background(
            Image("back")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
        )
        
        
    }
    

    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
