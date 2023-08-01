//
//  DetailView.swift
//  hackerNews
//
//  Created by Matthew Jackson on 01/08/2023.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?

    var body: some View {
        if let safeUrl = url {
            let x = URL(string: safeUrl)
            if let safeTing = x {
                Link("website", destination: safeTing)
            }
        } else {
            Text("hello world")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
