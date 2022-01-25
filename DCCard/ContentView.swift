//
//  ContentView.swift
//  DCCard
//
//  Created by David Chester on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // reminder that Zstack goes on the Zaxis so the order here is items in the back should be at the top
            Color(red: 0.61, green: 0.35, blue: 0.71)
                .opacity(0.90)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(K.myPic)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 40, style: .continuous).stroke(Color.white, lineWidth: 8))
                Text(K.myName)
                    .fontWeight(.bold)
                    .padding()
                    .font(Font.custom("AsapCondensed-Medium", size: 40))
                    .foregroundColor(.white)
                Text(K.myJob)
                    .foregroundColor(.white)
                    .font(Font.custom("AsapCondensed-MediumItalic", size: 24))
                Divider()
                InfoView(text: K.myNumber, sfImage: "phone.circle.fill")
                    .padding()
                InfoView(text: K.myEmail, sfImage: "envelope.circle.fill")
                    .padding()
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



}
