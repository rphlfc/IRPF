//
//  TitleView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI


struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 22, height: 22)
                .onTapGesture { configuration.isOn.toggle() }
        }
    }
}

struct WelcomeView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var isDarkOn = false
    
    var body: some View {
        VStack {
            HStack {
                VStack (alignment: .leading) {
                    Text("Que bom ter você por aqui,")
                        .foregroundColor(Color(#colorLiteral(red: 0.5601476431, green: 0.6965487599, blue: 0.7771148682, alpha: 1)))
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                    
                    Text("Evaristo Costa")
                        .foregroundColor(Color("navigationForeground"))
                        .font(.system(size: 32, weight: .black))
                }
                .padding(.leading, 24)
                .padding(.bottom, 24)
                
                Spacer()
                
                VStack {
                    Button(action: {
                        let preferences = UserDefaults.standard
                        var theme = preferences.string(forKey: "userTheme")
                        if theme == "light" {
                            theme = "dark"
                        } else {
                           theme = "light"
                        }
                        preferences.set(theme, forKey: "userTheme")
                        SceneDelegate.shared?.changeTheme(themeVal: theme!)
                    }) {
                        Image(systemName: self.colorScheme == .light ? "moon.fill" : "sun.max.fill")
                        .foregroundColor(Color("modeButtonForeground"))
                    }
                    .frame(width: 30, height: 30)
                    .background(Color("modeButtonBackground"))
                    .cornerRadius(15)
                    .padding(.trailing, 24)
                }
            }
            .background(Color("navigationBackground"))
            .padding(.top, 24)
        }
        .background(Color("navigationBackground"))
        .cornerRadius(40, corners: [.bottomRight])
        .shadow(color: Color("shadow"), radius: 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
