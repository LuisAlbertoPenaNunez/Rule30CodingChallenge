//
//  CoolRule30View.swift
//  Rule30Exercise
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import SwiftUI
struct CoolRule30View: View {
    @State var superText: String = ""
    
    var body: some View {
        Text(superText)
            .font(.system(size: 16))
            .multilineTextAlignment(.center)
            .bold()
            .onAppear {
                generateText()
            }
    }
    
    func generateText() {
        var output = String()
        var state_int: UInt = 1 << 31
        for _ in 0..<32 {
            var height = 64
            while height >= 0 {
                let bitWiseOperationToHeight = (state_int >> height & 1)
                let outputToAppend = (bitWiseOperationToHeight != 0 ? "*" : " ");
                output.append(outputToAppend)
                height -= 1
            }
            output.append("\n")
            state_int = state_int >> 1 ^ (state_int | state_int << 1)
        }
        typeWriter(textToOutput: output)
    }
    
    func typeWriter(at position: Int = 0, textToOutput: String) {
            if position == 0 {
                superText = ""
            }
            if position < textToOutput.count {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.001) {
                    
                    let text = textToOutput.index(textToOutput.startIndex, offsetBy: position)
                    superText.append(textToOutput[text])
                    typeWriter(at: position + 1, textToOutput: textToOutput)
                }
            }
        }
}

struct CoolRule30View_Previews: PreviewProvider {
    static var previews: some View {
        CoolRule30View()
    }
}
