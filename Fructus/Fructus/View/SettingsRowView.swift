//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    let name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                
                if let content {
                    Text(content)
                } else if let linkLabel, let linkDestination {
                    Link(linkLabel, destination: URL(string: linkDestination)!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "John / Jane")
}

#Preview {
    SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
}
