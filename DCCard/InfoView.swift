//
//  InfoView.swift
//  DCCard
//
//  Created by David Chester on 10/6/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let sfImage: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.white)
                //.foregroundColor(.white) - another way to set color
                .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack{
                Image(systemName: sfImage)
                    .foregroundColor(.green)
                Text(text)
                    .font(Font.custom("AsapCondensed-SemiBold", size: 23))
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hey There", sfImage: "mail.stack")
            .previewLayout(.sizeThatFits)
      
    }
}
