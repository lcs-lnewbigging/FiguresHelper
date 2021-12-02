//
//  TriangleFormulaPage.swift
//  FiguresHelper
//
//  Created by Luke Newbigging on 2021-12-01.
//

import SwiftUI

struct TriangleFormulaPage: View {
    
    @State var base: Double = 15.0
    
    @State var height: Double = 20.0
    
    var area: Double{
        return base * height / 2
    }
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                Text("Base:")
                    .bold()
                    .font(.title3)
                    .padding(10)
            
                Slider(value: $base,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Base")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

                Text("Height:")
                    .bold()
                    .font(.title3)
                    .padding(10)
                
                Slider(value: $height,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Height")
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
            
            
        }
        .navigationTitle("Area Of A Triangle")
    }
}






struct TriangleFormulaPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TriangleFormulaPage()
        }
        .preferredColorScheme(.light)
    }
}
