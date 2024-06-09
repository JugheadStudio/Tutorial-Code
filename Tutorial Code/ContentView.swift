//
//  ContentView.swift
//  Tutorial Code
//
//  Created by Ruan Jordaan on 2024/06/09.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .foregroundColor(configuration.isOn ? .orange : .white)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
                .foregroundColor(.white)
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image("headerImage")
                .resizable()
                .scaledToFill()
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            VStack(spacing: 20){
                ZStack{
                    Circle()
                        .fill(Color.orange)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    Image(systemName: "star.fill")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                
                Text("LOGIN")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                
                Text("Explore the galaxy")
                    .foregroundColor(.white)
                
                VStack(alignment: .leading) {
                    Text("Your Email")
                        .foregroundColor(.white)
                    TextField("Your email here...", text: .constant(""))
                        .padding()
                        .background(Color.clear)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white, lineWidth: 1)
                        )
                }
                
                VStack(alignment: .leading) {
                    Text("Password")
                        .foregroundColor(.white)
                    SecureField("Your password here...", text: .constant(""))
                        .padding()
                        .background(Color.clear)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white, lineWidth: 1)
                        )
                }
                
                HStack {
                    Toggle(isOn: .constant(false)) {
                        Text("Remember me")
                            .foregroundColor(.white)
                    }
                    .toggleStyle(CheckboxToggleStyle())
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Forgot password")
                            .foregroundColor(Color.orange)
                    }
                    
                }
                
                Button(action: {}){
                    Text("Login")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color.purple)
                        .cornerRadius(50)
                }
                
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.white)
                    Button(action: {}){
                        Text("Sign Up")
                            .foregroundColor(Color.orange)
                    }
                }
            }
            .padding(25)
            .background(Color(red: 0.035, green: 0, blue: 0.067))
            .cornerRadius(20)
        }
        .background(Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}

#Preview {
    ContentView()
}
