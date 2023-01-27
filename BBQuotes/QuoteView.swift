//
//  QuoteView.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 1/27/23.
//

import SwiftUI

struct QuoteView: View {
    var body: some View {
        ZStack {
            Image("breakingbad")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 2.7, height: UIScreen.main.bounds.height * 1.1)
            
            VStack {
                Spacer()
                Spacer()
                
                Text("\"You either run from things, or you face them, Mr. White.\"")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()
                
                ZStack {
                    Image("jessepinkman")
                        .resizable()
                        .scaledToFill()
                    
                    VStack {
                        Spacer()
                        
                        Text("Jesse Pinkman")
                            .foregroundColor(.white)
                            .padding(10)
                            .frame(maxWidth: .infinity)
                            .background(.gray.opacity(0.33))
                    }
                }
                .frame(width: UIScreen.main.bounds.width/1.1, height: UIScreen.main.bounds.height/1.8)
                .cornerRadius(80)
                
                Spacer()
                
                Button("Get Random Quote") {
                    
                }
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color("BreakingBadGreen"))
                .cornerRadius(7)
                .shadow(color: Color("BreakingBadYellow"), radius: 2, x: 0, y: 0)
                
                Spacer()
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width)
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
