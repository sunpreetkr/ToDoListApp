//
//  LoginView.swift
//  ToDoList
//
//  Created by Sunpreet Kaur on 6/10/2023.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView{
            VStack{
                // Header
               HeaderView(title: "To Do List",
                          subtitle: "Get things done",
                          angle: 15,
                          background: .pink)
                
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        viewModel.login()
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                
                // Create Account
                VStack{
                    Text("New around here?")
                
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                Spacer()
            }
        }
    
    }
}

#Preview {
    LoginView()
}
