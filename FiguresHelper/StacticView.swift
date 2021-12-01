//
//  StacticView.swift
//  FiguresHelper
//
//  Created by Luke Newbigging on 2021-12-01.
//

import SwiftUI

struct StacticView: View {
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                Text("Circle")
                    .bold()
                    .font(.title)
                    .padding(10)
                Text("Radius")
                    .bold()
                    .font(.title)
                    .padding(10)
                Spacer()
                
                HStack{
                    Text("25.0")
                        .padding(10)
                }
                
                Text("This is a cool slider")
                    .bold()
                    .padding(.bottom, 10)
                    .padding(10)
                Slider(value: .constant(50.0),
                       in: 0.0...100.0,
                       label: {
                            Text("Opacity")
                },
                       minimumValueLabel: {
                            Text("0")
                },
                       maximumValueLabel: {
                            Text("100")
                })
                
                Text("Area:")
                    .bold()
                    .font(.title)
                    .padding(10)
                
            }
            
            
            
            
            
            
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
