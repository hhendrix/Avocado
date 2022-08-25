//
//  SettingsView.swift
//  Avocado
//
//  Created by Harry Lopez on 3/05/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTY
    
    @State private var enableNotifications: Bool  = true
    @State private var backgroundRefresh: Bool = true
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                    
                
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }// VSTACK
            .padding()
            
            // MARK: - FORM
            Form{
                // MARK: - SECTIOn #1
                Section(header: Text("General Settings"), content: {
                    Toggle(isOn: $enableNotifications, label: {
                        Text("Enable notification")
                    })
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("Background refresh")
                    })
                })
                
                // MARK: - SECTIOn #2
                
                Section(header: Text("Application"), content: {
                    if enableNotifications {
                        HStack{
                            Text("Product")
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack{
                            Text("Compatibility")
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack{
                            Text("Developer")
                            Spacer()
                            Text("Harry López")
                        }
                        HStack{
                            Text("Designer")
                            Spacer()
                            Text("Harry López")
                        }
                        HStack{
                            Text("Website")
                            Spacer()
                            Text("hlenterprises.com")
                        }
                        HStack{
                            Text("Versión")
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack{
                            Text("Personal Message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding")
                        }
                    }
                    
                })
            }
            
            
        }// VSATCK
        .frame(maxWidth:640)
    }
}
// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
