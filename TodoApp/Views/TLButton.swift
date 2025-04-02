//
//  TLButton.swift
//  TodoApp
//
//  Created by นางสาวพรทิพย์พา ธีระประเวศ on 2/4/2568 BE.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                    .padding(5)
            }
        }
    }
}

#Preview {
    TLButton(
        title: "Button",
        background: .blue,
        action: {}
    )
}
