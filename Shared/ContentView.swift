//
//  ContentView.swift
//  Shared
//
//  Created by Luca Gaudino on 18/12/21.
//

import SwiftUI

struct ContentView: View {
    let cvc = ContentViewController.init()
    var body: some View {
        Text(cvc.stringResult ?? "Hello world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
