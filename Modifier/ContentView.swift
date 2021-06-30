//
//  ContentView.swift
//  Modifier
//
//  Created by kuehar on 2021/07/01.
//

import SwiftUI

struct BorderedCaption: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption2)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 1)
            )
            .foregroundColor(Color.blue)
    }
}

extension View {
    func borderedCaption() -> some View {
        modifier(BorderedCaption())
    }
}

struct ContentView: View {
    var body: some View {
        Image(systemName: "bus")
            .resizable()
            .frame(width:50, height:50)
        Text("Downtown Bus")
            .borderedCaption()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
