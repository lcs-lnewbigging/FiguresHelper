//
//  MrGordonsStaticView.swift
//  FiguresHelper
//
//  Created by Luke Newbigging on 2021-12-01.
//



        import SwiftUI

        struct CircleView: View {
            
            //Mark: Stored Properties
            //"radius" is name
            //"double" is the data type
            //by adding = 15.0 we are just providing a default value
            //Input- we need this from the user
            // we want SwiftUi to update the interface based on what the user selects.
            //to do this we use a special peice of Syntax called a "property Wraper"
            //@State
            // HTis marks the property as being one that SwiftUi should "watch" for changes
           @State var radius: Double = 15.00
            // Mark: Computed Properties
            var area: Double{
                return Double.pi * radius * radius
            }
            
            // User interface
            var body: some View {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Input
                    Text("Radius:")
                        .bold()
                    
                    Group {
                        
                        // Show the selected radius value
                        HStack {
                            Spacer()
                            Text("\(radius)")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        // The Syntax of $ says to use the this property (radius) and BIND IT to this control
                        // TO "bind" means that when the control changes, the property's value changes
                        Slider(value: $radius,
                               in: 0.0...100.0,
                               label: {
                            Text("Radius")
                        },
                               minimumValueLabel: {
                            Text("0.0")
                        },
                               maximumValueLabel: {
                            Text("100.0")
                        })

                    }
                    
                                
                    // Output
                    Text("Area:")
                        .bold()
                    
                    Text("\(area) Square Units")
                        .font(.title2)
                    
                    
                    Spacer()
                    
                }
                .padding()
                .navigationTitle("Circle")
            }
        }

        struct CircleView_Previews: PreviewProvider {
            static var previews: some View {
                NavigationView {
                    CircleView()
                }
            }
        }
    


