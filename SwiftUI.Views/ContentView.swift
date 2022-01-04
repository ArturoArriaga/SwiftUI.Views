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

struct LazyVstack_WithScrolling: View {
    let w: CGFloat = 200
    let h: CGFloat = 150
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 5, pinnedViews: [.sectionHeaders,.sectionFooters]) {
                Section {
                    Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                } header: {
                    Text("Header")
                } footer: {
                    Text("Footer")
                }

            }
        }
    }
}

struct LazyHstack_WithScrolling: View {
    let w: CGFloat = 200
    let h: CGFloat = 150
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 5, pinnedViews: [.sectionHeaders,.sectionFooters]) {
                Section {
                    Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                 Text("Arturo Arriaga").frame(width: w, height: h).foregroundColor(.white).background(.blue)
                } header: {
                    Text("Header")
                } footer: {
                    Text("Footer")
                }

            }
        }
    }
}

struct ZStack_Basic: View {
    var body: some View {
        ZStack {
            Color.blue
            VStack {
                Text("Arturo Arriaga").font(.largeTitle)
                Text("Introduction").foregroundColor(.white)
                Text("Z Stacks are great for setting a background color.").frame(maxWidth: .infinity).padding().background(Color.cyan)
            }
            // Comment out the following line to see what happens to the safe area edges
        }.ignoresSafeArea()
    }
}

struct ZStack_Layering: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("ZStack")
            // spacer configurations: can have a min limit. Pushes things away.
//            Spacer(minLength: 10)
            Spacer().frame(width: 10, height: 30)
            
            ZStack(alignment: .bottomTrailing) {
                Image("harvard.svg")
                    .resizable()
                    .scaledToFit()
                
                Rectangle()
                    .fill(Color.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 100)
                
                Text("Software Engineering")
                    .font(.title)
                    .padding()
            }
        }
    }
}

struct Spacer_ex : View {
    var body: some View {
        VStack {
            Text("Spacer").font(.largeTitle)
            Text("Introduction").foregroundColor(.gray)
            Text("Spacers push things away either vertically or horizontally").background(.yellow)
            Image(systemName: "arrow.up.circle.fill")
            Spacer()
            Image(systemName: "arrow.down.circle.fill")
            
            HStack {
                Text("Horizontal Spacer")
                Image(systemName: "arrow.right.circle.fill")
                Spacer()
                Image(systemName: "arrow.left.circle.fill")
            }.padding(.horizontal)
            Color.yellow.frame(maxHeight: 50)
        }.font(.title)
    }
}

struct GeoReader_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Geometry Reader").font(.largeTitle)
            Text("Introduction").foregroundColor(.gray)
            Text("The geo reader is a container view that pushes out to fill up all available space. You use it to help with positioning items within it.")
            
            GeometryReader { geometryProxy in
                VStack {
                    Text("Width \(geometryProxy.size.width)")
                    Text("Width \(geometryProxy.size.height)")

                }.padding().foregroundColor(.white).font(.title)
            }.background(Color.pink)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        
        // add this group container to see the view on multiple devices.
//        Group {
//            HeaderView().previewInterfaceOrientation(.landscapeLeft)
// HeaderView().preferredColorScheme(.dark).previewInterfaceOrientation(.landscapeRight)
//            HeaderView().previewDevice(.init(rawValue: "iPad mini (6th generation)"))
//        }
        
//        Vstack_Nesting()
//        Lazy_Vstack()
//        LazyVstack_WithScrolling()
//        LazyHstack_WithScrolling()
//        ZStack_Basic()
//        ZStack_Layering()
//        Spacer_ex()
        GeoReader_Intro()
    }
}
