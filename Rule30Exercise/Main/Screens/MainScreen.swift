//
//  ContentView.swift
//  Rule30Exercise
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import SwiftUI

struct MainScreen: View {
    let rule30Previews = [
        mainScreenPreviewPicture1,
        mainScreenPreviewPicture2,
        mainScreenPreviewPicture3,
        mainScreenPreviewPicture4
    ]
    
    @State private var showingCredits = false
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment:.leading) {
                Text("main_screen_large_title")
                    .font(.system(size: 50))
                    .fontWeight(.light)
                HStack {
                    HStack {
                        LottieView(name: fiveStarAnim, loopMode: .playOnce)
                            .frame(width: 70, height: 40)
                        Text("main_screen_article_static_reviews")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                    }
                    Spacer()
                    Text("main_screen_article_authors")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                }

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<rule30Previews.count) {index in
                            Image(rule30Previews[index])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 200)
                                .cornerRadius(16)
                        }
                    }
                }
                
                Divider()
                    .padding()
                
                HStack {
                    Text("main_screen_article_section")
                        .bold()
                    
                }.padding(.bottom, 16)
                
                Text("main_screen_article")
                .fontWeight(.light)
            }
            .padding()
            
            
            Text("main_screen_cta")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.pink)
                .cornerRadius(50.0)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                .padding(.horizontal)
                .onTapGesture {
                    showingCredits.toggle()
                }
                .sheet(isPresented: $showingCredits) {
                    Rule30SheetScreen()
                }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
