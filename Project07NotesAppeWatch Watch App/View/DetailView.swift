//
//  DetailView.swift
//  Project07NotesAppeWatch Watch App
//
//  Created by Kayque Dos anjos on 16/09/24.
//

import SwiftUI

struct DetailView: View {
    //MARK: - <Properties>
    
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isCreditsPresented: Bool = false
    @State private var isSetingPresented: Bool = false
    
    //MARK: - <Body>
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // HEADER
            HeaderView(title: "")

            // CONTENT
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // FOOTER
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSetingPresented.toggle()
                    }
                    .sheet(isPresented: $isSetingPresented, content: {
                        SettingsView()
                    })
                
                Spacer()
                
                Text("\(count)/\(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented, content: {
                        CreditsView()
                    })
            
            }//: HSTACK
            .foregroundColor(.secondary)
        }//: VSTACK
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
  static var sampleData: Note = Note(id: UUID(), text: "Hello, World!")
  
  static var previews: some View {
    DetailView(note: sampleData, count: 5, index: 1)
  }
}
