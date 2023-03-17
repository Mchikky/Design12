//
//  ContentView.swift
//  Design12
//
//  Created by Chikaodili Deng on 17/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text ("SF Symbol weather list")
                .font(.largeTitle)
                .padding()
                
            ExtractedView(color: .blue, text: "sun.min.fill")
            ExtractedView(color: .gray, text: "sun.max.fill")
            ExtractedView(color: .green, text: "sunrise.fill")
            ExtractedView(color: .orange, text:"sunset.fill")
            ExtractedView(color:.red, text: "sun.dust.fill")
            ExtractedView(color:.purple, text: "sun.haze.fill")
            ExtractedView(color:.red, text: "cloud.fill")
            ExtractedView(color:.yellow, text: "cloud.drizzle.fill")

   
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    
    var color: Color
    var text: String
    
    var body: some View {
        HStack{
            Image(systemName:text)
                .foregroundColor(color)
            Text(text)
                .font(.title2)
                .foregroundColor(color)
        }
        .foregroundColor(.red)
    }
    
}
