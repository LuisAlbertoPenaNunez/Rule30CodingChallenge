//
//  Rule30GalleryView.swift
//  Rule30Exercise
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import SwiftUI

struct Rule30GalleryView: View {
    
    let rule30Previews = [
        mainScreenPreviewPicture1,
        mainScreenPreviewPicture2,
        mainScreenPreviewPicture3,
        mainScreenPreviewPicture4
    ]
    
    var body: some View {
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
}

struct Rule30GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        Rule30GalleryView()
    }
}
