//
//  Home.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 06/02/23.
//

import SwiftUI

struct Home: View {
    @State var offset: CGFloat = 0
    var topEdge: CGFloat = 0
    var body: some View {
        let data = ExampleData()
        let dayWeather = data.daysWeather
        ZStack {
            GeometryReader { proxy in
                Image("sky")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }.ignoresSafeArea()
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    VStack(alignment: .center, spacing: 10) {
                        ShowCurrentWeatherView(offset: $offset)
                    }
                    .offset(y: -offset)
                       
                    VStack(spacing: 8) {
                        CustomStackView {
                            Label {
                                Text("Clear Conditions would remain")
                            } icon: {
                                Image(systemName: "clock")
                            }
                        }
                    contentView: {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 30){
                                ForEach(dayWeather) { item in
                                    ForecastView(item: item)
                                }
                            }
                        }
                        
                    }
                        WeatherDataView()
                        
                    }
                }
                .padding(.top,25)
                .padding([.horizontal,.bottom])
                .overlay(
                    GeometryReader { proxy -> Color in
                        let minY = proxy.frame(in: .global).minY
                        DispatchQueue.main.async {
                            self.offset = minY
                        }
                        return Color.clear
                    }
                )
            }
        }
    }
    
    func getTitleOffset() -> CGFloat{
        if offset < 0 {
            let progress = offset / 120
            let newOffset = (progress <= 1.0 ? progress : 1) * 20
            return newOffset
        }
        return 0
    }
}
