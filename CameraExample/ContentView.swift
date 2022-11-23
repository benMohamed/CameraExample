//
//  ContentView.swift
//  CameraExample
//
//  Created by Mohammed on 11/22/22.
//

import SwiftUI

var backGroundColor = Color(red: 240/255, green: 240/255, blue: 240/255)

struct ContentView: View {
    @State var showingPopup = false
    var datas = [Data(name: "Levels",
                      imagesName: ["gsm", "battery"]),
                 Data(name: "Elite Plan",
                      description: "See plan",
                      subDatas: [Plan(id: "New Plan Start in", description: "24 days"), Plan(id: "Photos", description: "1632 left"), Plan(id: "HD Video Downloads", description: "40 left")])]
    var body: some View {
        ZStack {
            VStack{
                Spacer().frame(height: 50)
                List{
                    HeaderView(show: $showingPopup)
                        .listRowInsets(.init())
                    ForEach(datas, id: \.self) { data in
                        DataCell(data: data)
                            .listRowInsets(.init())
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .background(backGroundColor)
            PopupView(show: $showingPopup)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
