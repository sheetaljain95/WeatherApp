//
//  Home.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 06/02/23.
//

import SwiftUI

struct Home: View {
    @State var offset: CGFloat = 0
    var body: some View {
        var data = ExampleData()
        var dayWeather = data.daysWeather
        ZStack {
            GeometryReader { proxy in
                Image("sky")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }.ignoresSafeArea()
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    VStack(alignment: .center, spacing: 5) {
                        ShowCurrentWeatherView()
                    }
                    VStack(spacing: 8) {
                        CustomStackView {
                            Label {
                                Text("Hourly Forecast")
                            } icon: {
                                Image(systemName: "clock")
                            }
                        } contentView: {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 30){
                                    ForEach(dayWeather) { item in
                                        ForecastView(item: item)
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.top,25)
                .padding([.horizontal,.bottom])
                .overlay(
                    GeometryReader { proxy -> Color in
                        let minY = proxy.frame(in: .global).minY
                        return Color.clear
                    }
                )
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
