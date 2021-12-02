//
//  StacticView.swift
//  FiguresHelper
//
//  Created by Luke Newbigging on 2021-12-01.
//

import SwiftUI

struct StacticView: View {
    
    @State var radius: Double = 15.00
     
     var area: Double{
         return Double.pi * radius * radius
     }
    
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment:.leading){
                
                Text("Radius:")
                    .bold()
                    .font(.title)
                    .padding(10)
                Spacer()
                
                
                
                
                Text("Radius Of The Circle:")
                    .bold()
                    .padding(10)
                    
                
                Slider(value: $radius,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
                    .padding(10)
                
                
                
            
            
            Text("Area:")
                .bold()
                .font(.title3)
                .padding(10)
            Text("\(area) Square Units")
                .font(.title2)
                .padding(10)
        }
            
            
            .navigationTitle("Area Of A Circle")
        }
        
    }
    
}




struct StacticView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            StacticView()
        }
    }
}
