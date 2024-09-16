//
//  CreditsView.swift
//  Project07NotesAppeWatch Watch App
//
//  Created by Kayque Dos anjos on 16/09/24.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - <Properties>
    @State private var randonNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randonNumber)"
    }
    
    //MARK: - <Body>
    var body: some View {
        VStack(spacing: 3) {
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            HeaderView(title: "Credits")
            
            // CONTENT
            Text("Kayque dos anjos")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        }//: VSTACK
    }
}

#Preview {
    CreditsView()
}
