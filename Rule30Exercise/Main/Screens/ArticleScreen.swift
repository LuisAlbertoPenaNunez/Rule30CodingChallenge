//
//  ContentView.swift
//  Rule30Exercise
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import SwiftUI

struct ArticleScreen: View {
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
                        ForEach(0..<rule30Previews.count, id: \.self) {index in
                            Image(rule30Previews[index])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 200)
                                .cornerRadius(16)
                        }
                    }
                }
                
                Divider()
                    .padding([.bottom, .top])
                
                HStack {
                    Text("main_screen_article_section")
                        .bold()
                    
                }.padding(.bottom, 16)
                
                Text("main_screen_article")
                .fontWeight(.light)
            }
            .padding()
            
            
                PrimaryButton(text: "main_screen_cta")
                .onTapGesture {
                    showingCredits.toggle()
                }
                .sheet(isPresented: $showingCredits) {
                    LiveDemoScreen()
                }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        ArticleScreen()
    }
}
