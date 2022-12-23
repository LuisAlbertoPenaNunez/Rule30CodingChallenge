//
//  ContentView.swift
//  Rule30Exercise
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import SwiftUI

struct MainScreen: View {
    let rule30Previews = [
        "rule30_preview1",
        "rule30_preview2",
        "rule30_preview3",
        "rule30_preview4"
    ]
    
    @State private var showingCredits = false
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment:.leading) {
                Text("Rule 30")
                    .font(.system(size: 50))
                    .fontWeight(.light)
                HStack {
                    HStack {
                        LottieView(name: "5-stars", loopMode: .playOnce)
                            .frame(width: 70, height: 40)
                        Text("(6200)")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                    }
                    Spacer()
                    Text("2 authors")
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
                    Text("Rule set")
                        .bold()
                    
                }.padding(.bottom, 16)
                
                
                Text("""
    Rule 30 is an elementary cellular automaton introduced by Stephen Wolfram in 1983.[2] Using Wolfram's classification scheme, Rule 30 is a Class III rule, displaying aperiodic, chaotic behaviour. This rule is of particular interest because it produces complex, seemingly random patterns from simple, well-defined rules. Because of this, Wolfram believes that Rule 30, and cellular automata in general, are the key to understanding how simple rules produce complex structures and behaviour in nature. For instance, a pattern resembling Rule 30 appears on the shell of the widespread cone snail species Conus textile.
    """)
                .fontWeight(.light)
            }
            .padding()
            
            
            Text("See a live demo")
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
