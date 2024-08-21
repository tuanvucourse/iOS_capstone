//
//  Checkbox.swift
//  LittleLemonApp
//
//  Created by QuocNV on 08/08/2024.
//

import SwiftUI

struct Checkbox: View {
    var label: String
    @Binding var isChecked: Bool

    var body: some View {
        HStack {
            Button(action: {
                self.isChecked.toggle()
            }) {
                HStack {
                    Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                                            .foregroundColor(isChecked ? Color.primaryColor1 : .primary)
                                            .background(isChecked ? .white : Color.clear)
                                            .cornerRadius(4)

                    Text(label)
                    Spacer()

                }
            }
        }
    }
}
