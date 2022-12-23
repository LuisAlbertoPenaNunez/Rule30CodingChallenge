//
//  Rule30Service.swift
//  Rule30Exercise
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import Foundation

protocol Rule30Service {
    func generateRandomOutput() -> String
}

class Rule30ServiceImpl : Rule30Service {
    func generateRandomOutput() -> String {
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
        return output;
    }
}
