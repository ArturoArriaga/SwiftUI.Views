//
//  ContentView.swift
//  SwiftUI.Views
//
//  Created by Arturo Arriaga on 12/27/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Arturo Arriaga")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
            Text("Software Engineer")
                .font(.title2)
                .frame(minWidth: 200)
                .foregroundColor(Color.orange)
                .background(Color.black)
                .cornerRadius(30)
            Text("Austin, Texas")
                .foregroundColor(Color.black)
                .fontWeight(.thin)
                .font(.title3)
                .background(Color.orange)
                .cornerRadius(28)
            
            HStack {
                Text("Harvard Extension School")
                Text("2021")
            }.foregroundColor(Color.red).font(.title3)
                .padding()
                .background(RoundedRectangle(cornerRadius: 42)
                                .foregroundColor(Color.black))
            
            Image("harvard.svg")
                .resizable()
            
        }

    }
}

struct HeaderView: View {
    var body: some View {
        VStack {
            Text("Arturo Arriaga").font(.title)
            Text("Software Engineer").font(.caption2)
            Text("Austin, Texas")
            HStack {
                Text("Harvard University")
                Text("Extension School")
            }
            

        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        HeaderView()
    }
}
