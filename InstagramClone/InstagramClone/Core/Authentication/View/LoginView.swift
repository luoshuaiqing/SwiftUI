//
//  LoginView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Spacer()
                
                // logo image
                Image("instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                // text fields
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(IGTextFieldModifier())
                }
                
                Button(action: {
                    
                }, label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button(action: {
                    
                }, label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(.blue)
                        .cornerRadius(8)
                })
                .padding(.vertical)
                
                HStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width / 2 - 40, height: 0.5)
                    
                    Text("OR")
                    
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width / 2 - 40, height: 0.5)
                }
                .foregroundStyle(.gray)
                
                HStack {
                    Image("facebook")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden()
                        .environment(registrationViewModel)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                }
                .padding(.vertical, 16)

            }
        }
    }
}

#Preview {
    LoginView()
}
