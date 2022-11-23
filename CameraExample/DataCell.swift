//
//  DataCell.swift
//  CameraExample
//
//  Created by Mohammed on 11/22/22.
//

import SwiftUI

struct DataCell: View {
    @State private var isExpanded: Bool = true
    var data: Data

    var body: some View {
        VStack {
            header
            Divider()
            if isExpanded {
                ForEach(data.subDatas) { plan in
                    SubPlanCell(plan: plan)
                }
                .padding(.leading)
                .padding(.bottom)
            }
        }
    }
    
    private var header: some View {
        HStack {
            Text(data.name)
                .padding(20)
                .foregroundColor((isExpanded && data.subDatas.count > 0) ? .black : .gray)
                .bold(isExpanded && data.subDatas.count > 0)
            Spacer()
            ForEach(data.imagesName, id: \.self) {
                Image($0)
                    .resizable()
                    .frame(width: 30, height: 20)
            }
            if let description = data.description {
                Text(description)
                    .padding(20)
                    .bold()
                    .foregroundColor(.blue)
            }
            Spacer().frame(width: 20)
        }
        .onTapGesture { isExpanded.toggle() }
    }
}

struct SubPlanCell: View {
    let plan: Plan

    var body: some View {
        HStack {
            Text(plan.id)
                .padding([.leading], 10)
                .foregroundColor(.gray)
            Spacer()
            Text(plan.description)
                .padding([.trailing], 40)
                .bold()
                .foregroundColor(.black)
        }
    }
}


struct DataCell_Previews: PreviewProvider {
    static var previews: some View {
        DataCell(data: Data(name: "Elite Plan", description: "See plan", subDatas: [Plan(), Plan(), Plan()]))
    }
}
