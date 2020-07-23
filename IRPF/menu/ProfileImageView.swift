//
//  ProfileImageView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct ProfileImageView: View {
    var body: some View {
        HStack {
            Image("evaristo")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        .frame(width: 50, height: 50)
        .cornerRadius(15)
    }
}

struct ProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImageView()
    }
}
