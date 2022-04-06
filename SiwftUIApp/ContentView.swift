//
//  ContentView.swift
//  SiwftUIApp
//
//  Created by Tatsuya Moriguchi on 4/5/22.
//

import SwiftUI

struct Data: Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
}

struct ContentView: View {
    
    var items = [Data]()
    
    var body: some View {
        NavigationView {
            List(items) { data in
                NavigationLink(destination: DataView(data: data)) {
                    HStack {
                        Image(data.imageName)
                            .resizable().frame(width: 100, height: 100, alignment: .center)
                            .aspectRatio(contentMode: .fit)
                        
                        Text(data.title)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)

                    }
                }
            }
            //.navigationBarTitle("Photos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                 ToolbarItem(placement: .principal, content: {
                 Text("Fruits")
              })})
        }
    }
}

struct DataView: View {
    var data: Data
    
    var body: some View {
        VStack {
            Image(data.imageName)
            Text(data.imageDescription)
                .padding(5)
            Spacer()
            HStack {
                Text("Date Taken Photo")
            Text(data.imageTakenDate)
                .padding(5)
            }
        }
        .navigationBarTitle(data.title)
    }



}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: [
            Data(title: "Apple",
                 imageName: "apple",
                 imageDescription: "This is an apple.",
                 imageTakenDate: "1/1/2022"),
            Data(title: "Banana",
                 imageName: "banana",
                 imageDescription: "This is a banana.",
                 imageTakenDate: "1/1/2022"),
            Data(title: "Blackberry",
                 imageName: "blackberry",
                 imageDescription: "This is a blackberry.",
                 imageTakenDate: "1/1/2022"),
            Data(title: "Blueberry",
                 imageName: "blueberry",
                 imageDescription: "This is a blueberry.",
                 imageTakenDate: "1/1/2022"),
            Data(title: "Cherry",
                 imageName: "cherry",
                 imageDescription: "This is a cherry.",
                 imageTakenDate: "1/1/2022")
        ])
            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}
