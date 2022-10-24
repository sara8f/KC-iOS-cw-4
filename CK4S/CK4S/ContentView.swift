//
//  ContentView.swift
//  CK4S
//
//  Created by user on 22/10/2022.
//

import SwiftUI
@State var h = ""
struct ContentView: View {
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea()
            VStack{
                Text("حاسبة الدرجات")
                    .font(.title)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
               
                Image("calculator")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200,height: 200)
                    .padding()
                TextField("انقر درجتك", text:)
                
            }
        }
        
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
