//
//  ShowCurrentWeatherView.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 06/02/23.
//

import SwiftUI

struct ShowCurrentWeatherView: View {
    var currentWeather = ExampleData.currentWeather

    var body: some View {
        
        VStack{
            Text(currentWeather.city!)
                .font(.system(size: 35))
                .foregroundStyle(.white)
                .shadow(radius: 5)
            Text((currentWeather.weather?.current)!)
                .font(.system(size: 80))
                .foregroundStyle(.white)
                .shadow(radius: 5)
            Text((currentWeather.weather?.clouds!.rawValue)!)
                .font(.system(size: 20))
                .foregroundStyle(.white)
                .shadow(radius: 5)
            HStack {
                Text("H: \((currentWeather.weather?.high)!)")
                    .font(.system(size: 16))
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                Text("L: \((currentWeather.weather?.low)!)")
                    .font(.system(size: 16))
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
            }
            .padding(4)
        }
    }
}

struct ShowCurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ShowCurrentWeatherView()
    }
}
