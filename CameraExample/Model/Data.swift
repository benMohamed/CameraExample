//
//  Data.swift
//  CameraExample
//
//  Created by Mohammed on 11/22/22.
//

import Foundation
import SwiftUI

struct Data: Codable, Hashable, Identifiable {
    var id: Int = 0
    var name: String
    var description: String?
    var imagesName: [String] = []
    var subDatas: [Plan] = []
}


struct Plan: Codable, Hashable, Identifiable {
  var id: String
  var description: String
}

extension Plan {
    init() {
        self.id = "name"
        self.description = "description"
    }
}
