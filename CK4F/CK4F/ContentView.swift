//
//  ContentView.swift
//  CK4f
//
//  Created by user on 25/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var h = ""
    var body: some View {
        
        ZStack {
            Color.purple.ignoresSafeArea()
            VStack {
                Text("حاسبة الدرجات")
                    .font(.title)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                
                Image("calculator")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200,height: 200)
                    .padding()
                
                TextField("انقر درجتك", text: $grade)
                Text("احسب درجتي")
                    .font(.title3)
                    .foregroundColor(.black)
                    .onTapGesture {
                        if Int(grade) ?? 0 >= 90 {
                            h = "ممتاز"
                        } else if Int(grade) ?? 0 >= 80 {
                            h = "جيد"
                        } else if Int(grade) ?? 0 >= 70 {
                            h = "مقبول"
                        } else {
                            h = "راسب"
                        }
                    }
                Text("h")
                    .font(.system(size: 60))
                    .foregroundColor(.cyan)
                    .fontWeight(.semibold)
                    .padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
