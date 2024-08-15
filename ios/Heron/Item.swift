//
//  Item.swift
//  Heron
//
//  Created by 황인성 on 13/08/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}