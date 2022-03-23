//
//  AccountView.swift
//  uxcloudcourse
//
//  Created by Andres Haro on 3/18/22.
//

import SwiftUI

struct AccountView: View {
    // Add action/function to delete the item at the time we swipe to the right
    // State for values that can change overtime
    @State var isDeleted = false
    @State var isPinned = false
    var body: some View {
        NavigationView {
            List {
                
                profile
                menu
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
    
    var profile: some View {
        VStack(spacing: 8) {
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .black.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(Image(systemName: "hexagon")
                                .symbolVariant(.fill)
                                .foregroundColor(.blue)
                                .font(.system(size: 200))
                                .offset(x: -50, y: -100)
                            
                )
            
            Text("Andres Haro")
                .font(.title.weight(.semibold))
            HStack {
                Image(systemName: "location")
                    .imageScale(.small)
                Text("UT, USA")
                    .foregroundColor(.secondary)
            }
        }
        
        .frame(maxWidth: .infinity)
        .padding()
    }
    
    var menu: some View {
        Section {
            NavigationLink(destination: ContentView()) {
                Label("Settings", systemImage: "gear")
            }
            NavigationLink {
                ContentView()
            } label: {
                Label("Billing", systemImage: "creditcard")
            }
            NavigationLink { ContentView() } label: {
                Label("Help", systemImage: "questionmark")
                    .imageScale(.small)
            }
            
        }
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
    }
    
    var links: some View {
        Section {
            if isDeleted == false {
                Link(destination: URL(string: "https://apple.com")!) {
                    HStack {
                        Label("website", systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: true){
                    Button(action: { isDeleted = true }) {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.accentColor)
                    // Local Component
                    pinButton
                }
            }
            
            Link(destination: URL(string: "https://aharo.netlify.app")!) {
                HStack {
                    Label("Portfolio", systemImage: "iphone")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            // Swipe action + local component (pinButton)
            .swipeActions{
                pinButton
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.visible)
    }
    
    var pinButton: some  View {
        Button { isPinned.toggle() } label: {
            if isPinned {
                Label("Unpin", systemImage: "pin.slash")
            } else {
                Label("pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .blue)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
