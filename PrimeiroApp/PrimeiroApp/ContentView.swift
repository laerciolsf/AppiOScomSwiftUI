//
//  ContentView.swift
//  PrimeiroApp
//
//  Created by Laercio Soares Fragoso on 08/05/24.
//

//https://www.swift.org/getting-started/swiftui/
import SwiftUI

struct ContentView: View {
    
    var atividades =  ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

                      
    @State private var selecionado = "Archery"
    @State private var id = 1
                
    var cor: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    var body: some View {
        VStack{
            Text("Why not try…")
                .font(.largeTitle.bold()
                )
            VStack{
                Circle()
                    .fill(cor.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selecionado.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                Text("\(selecionado)!")
                    .font(.title)
            }
            .padding()
            .transition(.slide)
            .id(id)
           
            Spacer()
            Button("Try again") {
                withAnimation(.easeInOut(duration: 1)){
                    selecionado = atividades.randomElement() ?? "Archery"
                    id += 1
                    
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
