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
                Text("Harvard University")
                Text("2021")
            }.foregroundColor(Color.red).font(.title3)
                .padding()
                .background(RoundedRectangle(cornerRadius: 42)
                                .foregroundColor(Color.black))
            
            Image("harvard.svg")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
            
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


struct Vstack_Nesting : View {
    let s: CGFloat = 15
    var body: some View {
        VStack(alignment: .leading, spacing: s) {
            Text("Arturo Arriaga")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
            
            VStack {
                Text("A Vstack inside of another vstack")
                Divider()
                Text("Why is this neccessary?")
                Divider()
                Text("Because Vstacks are only allowed 10 views")
            }
            .padding()
            .foregroundColor(Color.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue))
            .padding()
            
            VStack(alignment: .leading) {
                Text("December 2021")
            }
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue)).padding()
        }
    }
}


struct Lazy_Vstack: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Arturo Arriaga")
            
            Text("Lazy V Stack")
            LazyVStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.border(Color.red, width: 2)
        }.font(.title)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        // add this group container to see the view on multiple devices.
//        Group {
//            HeaderView().previewInterfaceOrientation(.landscapeLeft)
//            HeaderView().preferredColorScheme(.dark).previewInterfaceOrientation(.landscapeRight)
//            HeaderView().previewDevice(.init(rawValue: "iPad mini (6th generation)"))
//
//        }
        
//        Vstack_Nesting()

        Lazy_Vstack()
    }
}
