//
//  FeaturedItem.swift
//  uxcloudcourse
//
//  Created by Andres Haro on 4/8/22.
//

import SwiftUI

struct FeaturedItem: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 8.0){
            Spacer()
            // Adding Logo
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                .padding(9)
                .background(.ultraThinMaterial, in:
                                RoundedRectangle(cornerRadius: 16, style: .continuous))
                .strokeStyle(cornerRadius: 15)
                
            // Adding the title
            Text("SwiftUI for iOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.accentColor, .accentColor.opacity(1.2)], startPoint: .topLeading, endPoint: .bottomTrailing))
            // Subtitle for the section
            Text("20 Sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            
            // Description
            Text("Build an iOS app for iOS 15 with custom layouts animations and ...")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all, 20.0)
        .padding(.vertical, 20)
        .frame(height: 350.0)
        .background(.ultraThinMaterial, in:
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
        )
//        .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
//        .mask(RoundedRectangle(cornerRadius: 30.0, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.5), radius: 10, x: 0, y: 10)
        .strokeStyle()
        .padding(.horizontal, 20)
        .background(Image("Blob 1")
                        .offset(x:250, y:-100)
        )
        
        .overlay(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x: 32, y: -80)
    )
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
