//
//  ContentView.swift
//  SiwftUIApp
//
//  Created by Tatsuya Moriguchi on 4/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0..<10) {_ in
            Image("apple")
                .resizable()
            
            Text("Hello, world!")
                .foregroundColor(.blue)
                .fontWeight(.bold)
        }
            .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}
