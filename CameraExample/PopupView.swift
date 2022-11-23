//
//  PopupView.swift
//  CameraExample
//
//  Created by Mohammed on 11/22/22.
//

import SwiftUI

var popupColor = Color(red: 237/255, green: 255/255, blue: 245/255)

struct PopupView: View {
    @Binding var show: Bool
    
    var body: some View {
        if show {
            VStack{
                HStack{
                    Image("check")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding()
                    Text("Your camera has been added.")
                    Button {
                        withAnimation(.linear(duration: 0.1)) {
                            show.toggle()
                        }
                    } label: {
                        Image("close")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding()
                    }
                    
                }
                .background(popupColor)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.green, lineWidth: 2)
                )
                Spacer()
            }
            .clipped()
        }
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView(show: .constant(true))
    }
}
