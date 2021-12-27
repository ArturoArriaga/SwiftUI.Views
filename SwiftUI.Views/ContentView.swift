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
            Text("Austin, Texas")
                .foregroundColor(Color.black)
                .fontWeight(.thin)
                .font(.title3)
                .background(Color.orange)
            
            HStack{
                Text("Harvard Extension School")
                    .foregroundColor(Color.red)
                    .fontWeight(.medium)
                Text("2021")
                    .foregroundColor(Color.red)
                    .fontWeight(.medium)
            }
            
            Image("harvard.svg")
                .resizable()
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
