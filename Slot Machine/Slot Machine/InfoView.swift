//
//  InfoView.swift
//  Slot Machine
//
//  Created by Shuaiqing Luo on 7/16/24.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 10, content: {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("About the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "John / Jane")
                    FormRowView(firstItem: "Designer", secondItem: "Robert Petras")
                    FormRowView(firstItem: "Music", secondItem: "Dan Lebowitz")
                }
            }
            .font(.system(.body, design: .rounded))
        })
        .padding(.top, 40)
        .overlay(
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title)
            })
            .padding(.top, 30)
            .padding(.trailing, 20)
            .accentColor(.secondary),
            alignment: .topTrailing
        )
    }
}

struct FormRowView: View {
    
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack {
            Text(firstItem).foregroundStyle(.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

#Preview {
    InfoView()
}
