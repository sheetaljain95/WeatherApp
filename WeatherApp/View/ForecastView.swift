//
//  ForecastView.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 07/02/23.
//

import SwiftUI

struct ForecastView: View {
    let item: DaysWeather
   
    var body: some View {
        let imageName = getImage(weather: item.clouds ?? .partlyClouded)
        HStack(spacing: 15) {
            VStack(spacing: 15) {
                
                Text(item.time!)
                    .font(.callout.bold())
                    .foregroundStyle(.white)
                Image(systemName: imageName)
                    .font(.title2)
                    .symbolVariant(.fill)
                    .foregroundStyle(.white)
                    .frame(height: 30)
                    .symbolRenderingMode(.palette)
                Text(item.high!)
                    .font(.callout.bold())
                    .foregroundStyle(.white)
            }
        }
    }
    
    func getImage(weather: Cloud) -> String {
        switch weather {
        case .partlyClouded:
            return "cloud.sun"
        case .clouded:
            return "cloud.rain.fill"
        case .sunny:
            return "sun.min.fill"
        case .raining:
            return "cloud.rain"
        case .snowing:
            return "snow"
        }
    }

}

