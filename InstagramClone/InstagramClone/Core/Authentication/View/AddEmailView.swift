//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import SwiftUI

struct AddEmailView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(RegistrationViewModel.self) private var viewModel
    
    var body: some View {
        @Bindable var viewModel = viewModel
        
        VStack(spacing: 12) {
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)

            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $viewModel.email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                CreateUsernameView().navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(.blue)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    AddEmailView().environment(RegistrationViewModel())
}
