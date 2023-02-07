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
        HStack(spacing: 15) {
            VStack(spacing: 15) {
                Text(item.low!)
                    .font(.callout.bold())
                    .foregroundStyle(.white)
                Image(systemName: "sun.min")
                    .font(.title2)
                    .symbolVariant(.fill)
                    .foregroundStyle(.white, .yellow)
                    .frame(height: 30)
                    .symbolRenderingMode(.palette)
                Text(item.high!)
                    .font(.callout.bold())
                    .foregroundStyle(.white)
            }
        }
    }
}

