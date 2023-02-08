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
        
        VStack{
            Text(currentWeather.city!)
                .font(.system(size: 35))
                .foregroundStyle(.white)
                .shadow(radius: 5)
            Text((currentWeather.weather?.current)!)
                .font(.system(size: 45))
                .foregroundStyle(.white)
                .shadow(radius: 5)
            Text((currentWeather.weather?.clouds!.rawValue)!)
                .foregroundStyle(.secondary)
                .foregroundStyle(.white)
                .shadow(radius: 5)
            Text("H: \((currentWeather.weather?.high)!) L: \((currentWeather.weather?.low)!)")
                .foregroundStyle(.primary)
                .foregroundStyle(.white)
                .shadow(radius: 5)
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
