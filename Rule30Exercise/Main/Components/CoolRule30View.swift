//
//  CoolRule30View.swift
//  Rule30Exercise
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import SwiftUI
struct CoolRule30View: View {
    @State var superText: String = ""
    let rule30GeneratorService : Rule30Service = Rule30ServiceImpl()
    
    var body: some View {
        Text(superText)
            .font(.system(size: 16))
            .multilineTextAlignment(.center)
            .bold()
            .onAppear {
                superText = rule30GeneratorService.generateRandomOutput()
            }
    }
}

struct CoolRule30View_Previews: PreviewProvider {
    static var previews: some View {
        CoolRule30View()
    }
}
