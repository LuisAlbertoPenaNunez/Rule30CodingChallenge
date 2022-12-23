//
//  WelcomeScreenView.swift
//  Rule30Exercise
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    LottieView(name: animationWelcome, loopMode: .playOnce)
                    LottieView(name: animationPlanet, loopMode: .loop)
                    Spacer()
                    
                    Text("landing_page_subheading")
                        .font(.title3)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    
                    NavigationLink(
                        destination: MainScreen().navigationBarHidden(true),
                        label: {
                            Text("landing_page_cta")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.pink)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                    .navigationBarHidden(true)
                    
                    
                }
                .padding()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
