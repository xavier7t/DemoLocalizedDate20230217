//
//  ContentView.swift
//  DemoLocalizedDate20230217
//
//  Created by Xavier on 2/17/23.
//

import SwiftUI

let locales: [String] = [
    "en_US",
    "es_US",
    "fr_US",
    "pt_PT",
    "ar",
    "bo",
    "el",
    "nb"
]

struct ContentView: View {
    let now = Date()
    var body: some View {
        NavigationStack {
            List {
                ForEach(locales, id: \.self) { locale in
                    HStack {
                        Text(now, style: .date)
                        Spacer()
                        Text(now, style: .time)
                    }
                    .environment(\.locale, Locale(identifier: locale))
                }
            }
            .navigationTitle("Localized Dates")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
