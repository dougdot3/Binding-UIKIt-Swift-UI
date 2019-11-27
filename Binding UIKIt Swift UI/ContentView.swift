//
//  ContentView.swift
//  Binding UIKIt Swift UI
//
//  Created by Doug on 2019-11-27.
//  Copyright © 2019 dot3 Ltd. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var textHere = "Filler Value"
    @State private var textLabel = UILabel(frame: CGRect(x: 40.0, y: 120.0, width: 250.0, height: 100.0))
    
    var body: some View {
         VStack {
           // FilteredPhotoView()
            RepresentablePreviewView(text: $textHere, label:$textLabel)
            VStack{
                Button(action : {
                    print("Button Pressed")
                    self.textHere = "Button was pressed"
                }, label : {
                    Text("Show Camera Preview")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
