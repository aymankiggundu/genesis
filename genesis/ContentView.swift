//
//  ContentView.swift
//  genesis
//
//  Created by ayman kiggundu on 05/03/2025.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        TabView {
            CameraView()
                .tabItem {
                    Label("Camera", systemImage: "camera")
                }
            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message")
                }
            StoriesView()
                .tabItem {
                    Label("Stories", systemImage: "book")
                }
        }
    }
}

struct CameraView: View {
    var body: some View {
        Text("Camera View")
    }
}

struct ChatView: View {
    var body: some View {
        Text("Chat View")
    }
}

struct StoriesView: View {
    var body: some View {
        Text("Stories View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
