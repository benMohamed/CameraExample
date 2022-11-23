//
//  HeaderView.swift
//  CameraExample
//
//  Created by Mohammed on 11/22/22.
//

import SwiftUI

var headerColor = Color(red: 223/255, green: 227/255, blue: 236/255)

struct HeaderView: View {
    @Binding var show: Bool

    var body: some View {
        HStack{
            Image("camera")
                .resizable()
                .frame(width: 80, height: 65)
            Text("Lodge")
                .bold()
            Spacer()
            Button(action: {
                withAnimation(.linear(duration: 0.1)) {
                    show.toggle()
                }
            }, label: {
                Image("dots")
                    .resizable()
                    .frame(width: 40, height: 20)
                    .padding(20)
            })
        }
        .background(headerColor)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(show: .constant(true))
    }
}
