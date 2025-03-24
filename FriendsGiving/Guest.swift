//
//  Guest.swift
//  FriendsGiving
//
//  Created by Noah McGuire on 3/24/25.
//

import Foundation
import SwiftData

@MainActor
@Model
class Guest {
    var name: String
    var item: String
    var notes: String
    
    init(name: String, item: String, notes: String = "") {
        self.name = name
        self.item = item
        self.notes = notes
    }
    
    convenience init() {
        self.init(name: "", item: "")
    }
}

extension Guest {
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Guest.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        container.mainContext.insert(Guest(name: "Snoop", item: "Brownies", notes: "Be careful"))
        
        return container
    }
}
