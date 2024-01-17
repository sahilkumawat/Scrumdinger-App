//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Sahil Kumawat on 12/21/23.
//
import SwiftUI


@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
            WindowGroup {
                ScrumsView(scrums: $scrums)
            }
        }
}
