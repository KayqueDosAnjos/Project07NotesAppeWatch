//
//  HeaderView.swift
//  Project07NotesAppeWatch Watch App
//
//  Created by Kayque Dos anjos on 16/09/24.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - <Properties>
    
    var title: String = ""
    
    //MARK: - <Body>
    var body: some View {
        VStack {
            // TITLE
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
                
            }
            
            // SEPARATOR
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }//: VSTACK
            .foregroundColor(.accentColor)
        }//: VSTACK
    }
}

#Preview {
    Group {
        HeaderView(title: "Credits")
        HeaderView()
    }
}
