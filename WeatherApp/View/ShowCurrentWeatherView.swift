//
//  ShowCurrentWeatherView.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 06/02/23.
//

import SwiftUI

struct ShowCurrentWeatherView: View {
    var currentWeather = ExampleData.currentWeather
    @Binding var offset: CGFloat
    var body: some View {
        if (offset <= -120) {
            VStack(spacing: 10){
                Spacer()
                Text(currentWeather.city)
                    .font(.system(size: 35))
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                    .opacity(getTitleOpacityForTextTwo())
                
                Text("H: \(currentWeather.weather.high) | \(currentWeather.weather.clouds.rawValue)")
                    .foregroundStyle(.primary)
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                    .opacity(getTitleOpacityForTextTwo())
            }
            
        }
        else {
            VStack(spacing: 10){
                Spacer()
                Text(currentWeather.city)
                    .font(.system(size: 35))
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                    .opacity(getTitleOpacity())
                
                Text(currentWeather.weather.current)
                    .font(.system(size: 80))
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                    .opacity(getTitleOpacity())
                
                Text(currentWeather.weather.clouds.rawValue)
                    .foregroundStyle(.secondary)
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                    .opacity(getTitleOpacity())
                
                Text("H: \(currentWeather.weather.high) L: \(currentWeather.weather.low)")
                    .foregroundStyle(.primary)
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                    .opacity(getTitleOpacity())
            }
        }
    }
    func getTitleOffset() -> CGFloat{
        if offset < 0 {
            let progress = -offset / 120
            let newOffset = (progress <= 1.0 ? progress : 1) * 20
            return newOffset
        }
        return 0
    }
    
    func getTitleOpacity() -> CGFloat {
        let titleOffset = getTitleOffset()
        let progress = titleOffset/20
        let opacity = 1 - progress
        return opacity
    }
    
    func getTitleOpacityForTextTwo() -> CGFloat {
        let titleOffset = -offset/120
        let opacity = titleOffset - 1
        return opacity
    }
}
