//
//  SettingsView.swift
//  Project07NotesAppeWatch Watch App
//
//  Created by Kayque Dos anjos on 16/09/24.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - <Properties>
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    //MARK: - <Body>
    
    func update() {
        lineCount = Int(value)
    }
    
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            
            // ACTUAL LINE COUNT
            Text("Lines \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // SLIDER
            Slider(value: Binding(get: {
              self.value
            }, set: {(newValue) in
              self.value = newValue
              self.update()
            }), in: 1...4, step: 1)
              .accentColor(.accentColor)
        }// VSTACK
       
    }
}

#Preview {
    SettingsView()
}
