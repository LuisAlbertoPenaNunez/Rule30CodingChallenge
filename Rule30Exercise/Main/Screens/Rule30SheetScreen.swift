//
//  Rule30SheetScreen.swift
//  Rule30Exercise
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import SwiftUI

struct Rule30SheetScreen: View {
    var body: some View {
        ZStack {
            GradientView()
            
            Image(puppyImagePathName)
                .mask(CoolRule30View())
        }
    }
}

struct Rule30SheetScreen_Previews: PreviewProvider {
    static var previews: some View {
        Rule30SheetScreen()
    }
}
