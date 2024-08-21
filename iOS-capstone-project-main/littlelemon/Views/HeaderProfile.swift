//
//  HeaderProfile.swift
//  littlelemon
//

import SwiftUI

struct HeaderProfile: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    HStack {
                        Button(action: {
                            self.presentation.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "arrow.backward.circle.fill")
                                .foregroundColor(.primaryColor1)
                                .font(.system(size: 32, weight: .light))
                        }
                        Spacer()
                    }.padding(.leading)

                    Image("Logo")
                    HStack {
                        Spacer()
                        Image("Profile")
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(maxHeight: 50)
                            .clipShape(Circle())
                            .padding(.trailing)
                    }.padding(.trailing)
                }
            }
        }
        .frame(maxHeight: 50)
        .navigationBarBackButtonHidden(true) // hidden back navigation button
    }
}
