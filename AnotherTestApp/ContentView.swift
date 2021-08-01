//
//  ContentView.swift
//  AnotherTestApp
//
//  Created by Ray Wojciechowski on 01.08.21.
//

import SwiftUI

struct ContentView: View {
  @State private var presentingSheet = false
  @State private var tmpEvent = Event(desc: "default Event")
  @State private var counter = 0
  
  
  var body: some View {
    NavigationView {
      VStack {
        Text("Hello Test App")
      }
      .toolbar {
        Button(action: showSheet) {
          Label("Open sheet", systemImage: "plus")
        }
      }
      .sheet(isPresented: $presentingSheet) {
        NavigationView {
          VStack {
            Text("event: \(tmpEvent.desc)")
          }
          .navigationBarTitleDisplayMode(.inline)
          .navigationTitle(tmpEvent.desc)
          .toolbar {
            Button(action: { presentingSheet = false }) {
              Label("Close", systemImage: "xmark")
            }
          }
        }
      }
    }
  }
  
  private func showSheet() {
    counter += 1
    tmpEvent = Event(desc: "new Event \(counter)")
    presentingSheet = true
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
