//
//  ContentView.swift
//  Music4
//
//  Created by Paul Yanez on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 3
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                Music ()
                    .tabItem {
                        Label("Listen Now", systemImage: "play.circle.fill")
                    }.tag(0)
                
                Music()
                    .tabItem {
                        Label("Browse", systemImage: "square.grid.2x2.fill")
                    }.tag(1)
                
                Music()
                    .tabItem {
                        Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                    }.tag(2)
                
                Music()
                    .tabItem {
                        Label("Library", systemImage: "square.stack.fill")
                    }.tag(3)
                    .toolbarBackground(.visible, for: .tabBar)
                
                Music()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }.tag(4)
            }
            .tint(Color.pink)
            
        }
    }
}

struct Music: View {
    @State var fullWidth = false
    var twoColumnGrid = [GridItem(.flexible(), spacing: 6), GridItem(.flexible(), spacing: 6)]
    
    var body: some View {
        NavigationView {
            VStack {
                buttonView
                ZStack {
                    Spacer()
                    musicListView
                    
                    playertView
                }
            }
            .padding(.horizontal, fullWidth ? 20 : 0)
            .navigationTitle("Library")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        // action to perform when button is tapped
                    }) {
                        Text("Edit")
                    }
                    
                }
            }
        }
        .accentColor(.pink)
    }
    
    var buttonView: some View {
        VStack(spacing: 12.0) {
            HStack(spacing: 12.0) {
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "music.note")
                            .foregroundColor(Color.pink)
                        
                        Text("Songs")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.pink)
                            .padding(.vertical, 14)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.white.opacity(0.1))
                    }
                }
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "rectangle.stack")
                            .foregroundColor(Color.pink)
                        
                        Text("Albums")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.pink)
                            .padding(.vertical, 14)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.white.opacity(0.1))
                    }
                }
            }
            
            HStack(spacing: 12.0) {
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "music.mic")
                            .foregroundColor(Color.pink)
                        
                        Text("Artist")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.pink)
                            .padding(.vertical, 14)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.white.opacity(0.1))
                    }
                }
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "guitars")
                            .foregroundColor(Color.pink)
                        
                        Text("Genres")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.pink)
                            .padding(.vertical, 14)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.white.opacity(0.1))
                    }
                }
            }
            
        }
        .padding(.top, 10)
        .padding(.horizontal, 20)
    }
    
    
    var musicListView: some View {
        ScrollView {
            HStack {
                Text("Recently Added")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 4)
                
                Spacer()
            
            }
            LazyVGrid(columns: twoColumnGrid, spacing: 6) {
                
                VStack(alignment: .leading) {
                    Image("music-6")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Hot Fuss")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("The Killers")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }
                
                
                VStack(alignment: .leading) {
                    Image("music-18")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("In Utero")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("Nirvana")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }
                
                
                VStack(alignment: .leading) {
                    Image("music-11")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Melodrama")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("Lorde")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }
                
                
                VStack(alignment: .leading) {
                    Image("music-14")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Homogenic")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("Bjork")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }
                
                
                VStack(alignment: .leading) {
                    Image("music-15")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Bad")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("Michael Jackson")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }
                
                VStack(alignment: .leading) {
                    Image("music-3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Attack & Release")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("The Black Keys")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }
                
                
                VStack(alignment: .leading) {
                    Image("music-17")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Beggars Banquet")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("The Rolling Stones")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }
                
                
                VStack(alignment: .leading) {
                    Image("music-13")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Post")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("Bjork")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }

                
                VStack(alignment: .leading) {
                    Image("music-12")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Golden Hour")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("Kacey Musgraves")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }
 
                
                VStack(alignment: .leading) {
                    Image("music-5")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("American Idiot")
                            .font(.callout)
                            .lineLimit(1)
                        
                        Text("Green Day")
                            .font(.caption)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal, 2)
                    
                    Spacer()
                }
            }
            .padding(.top, -5)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .scrollIndicators(.hidden)
    }
    
    var playertView: some View {
        VStack(spacing: 0.0) {
            Spacer()
            ZStack {
                HStack {
                    Image("music-14")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    Text("Bjork - Homogenic")
                        .font(.callout)
                        .lineLimit(1)
                        .foregroundColor(Color.primary)
                        .padding(.horizontal, 6)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "pause.fill")
                                .font(.title2)
                                .foregroundColor(Color.primary)
                        }
                    }
                    .padding(.trailing, 6)
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "forward.fill")
                                .font(.title2)
                                .foregroundColor(Color.primary)
                        }
                    }
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(.black.opacity(0.2))
                .background(.ultraThinMaterial.opacity(1))
                
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 2)
                        .offset(y: 40)
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(.pink)
                                .frame(width: 240, alignment: .leading)
                                .frame(height: 2)
                                .offset(y: 40)
                        }
                }
            }
        }
    }
}


#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
