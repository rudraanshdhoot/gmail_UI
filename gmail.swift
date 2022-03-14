//
//  gmail.swift
//  patreons
//
//  Created by Rudraansh Dhoot on 12/03/2022.
//

import SwiftUI

struct gmail: View {
    var body: some View {
        ZStack {
            ScrollView {
                    mailView
            }
        }
    }
}

struct gmail_Previews: PreviewProvider {
    static var previews: some View {
        gmail()
            .preferredColorScheme(.dark)
    }
}

extension gmail {
    var mailView: some View {
        VStack(alignment: .leading) {
            HStack {
                    Image(systemName: "line.3.horizontal")
                        .font(.title)
                Text("Search in mail")
                Spacer()
                Image("tinder 1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .mask(Circle())
            }.padding()
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(.gray.opacity(0.3))
                ).padding()
            Text("primary".uppercased())
                .foregroundColor(.gray)
            ForEach(0 ..< 10) { item in
                HStack(alignment: .top) {
                    Image("eth_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .mask(Circle())
                        .padding(10)
                    VStack(alignment: .leading) {
                        Text("Hello There!")
                            .bold()
                        Text("Urgent: Your billing account...")
                            .bold()
                        Text("Go to my console -> Action Required..")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Text("4:46 PM")
                }
            }
            Spacer()
        }
    }
}
