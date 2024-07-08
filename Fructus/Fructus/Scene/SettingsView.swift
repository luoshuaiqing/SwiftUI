//
//  SettingsView.swift
//  Fructus
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    GroupBox(label:
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10, content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories.")
                                .font(.footnote)
                        })
                    }
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "app.iphone")) {
                            SettingsRowView(name: "Developer", content: "John / Jane")
                            SettingsRowView(name: "Designer", content: "Robert Petras")
                            SettingsRowView(name: "Compatibility", content: "iOS 14")
                            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                            SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                            SettingsRowView(name: "SwiftUI", content: "2.0")
                            SettingsRowView(name: "Version", content: "1.1.0")
                        }
                }
            }
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
            )
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
