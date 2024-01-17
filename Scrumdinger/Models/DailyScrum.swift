//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Sahil Kumawat on 12/22/23.
//

import Foundation


struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    var history: [History] = []


    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}


extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String


        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }


    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Web Development",
                   attendees: ["Sahil", "Will", "Shiama"],
                   lengthInMinutes: 10,
                   theme: .teal),
        DailyScrum(title: "App Development",
                   attendees: ["Ryuga", "Ginga", "Kyoya", "Masamune", "Yu", "Kenta"],
                   lengthInMinutes: 5,
                   theme: .sky),
        DailyScrum(title: "Advertising Meeting",
                   attendees: ["Sahil", "Anika", "Neelesh"],
                   lengthInMinutes: 5,
                   theme: .navy),
        DailyScrum(title: "Ping Pong clinic",
                   attendees: ["Shiama", "Sahil", "Will", "Adi", "Neelesh", "Anishka"],
                   lengthInMinutes: 5,
                   theme: .purple)
    ]
}
