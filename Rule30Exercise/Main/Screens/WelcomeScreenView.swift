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
                        destination: ArticleScreen().navigationBarHidden(true),
                        label: {
                            PrimaryButton(text:"landing_page_cta")
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
