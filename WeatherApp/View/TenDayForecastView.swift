//
//  TenDayForecastView.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 08/02/23.
//

import SwiftUI

struct TenDayForecastView: View {
    var body: some View {
        var data = ExampleData()
        var forecast = data.weeksWeather
        

        VStack(spacing: 8) {
            CustomStackView{
                Label{
                    Text("10 - Day Forecast")
                } icon: {
                    Image(systemName: "calendar")
                }
            } contentView: {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(forecast) { cast in
                        HStack(spacing: 15) {
                            Text(cast.day)
                                .font(.caption.bold())
                                .foregroundStyle(.white)
                                .frame(width: 60, alignment: .leading)
                            
                            
                            Image(systemName: getImage(weather: cast.clouds ?? .partlyClouded))
                                .font(.title3)
                                .symbolVariant(.fill)
                                .frame(width: 60, alignment: .leading)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white)
                            Text(cast.low)
                                .font(.caption.bold())
                                .foregroundStyle(.white)
                            ZStack(alignment: .leading) {
                                Capsule()
                                    .fill(.tertiary)
                                    .foregroundStyle(.white)
                                    .frame(width: 80, height: 3)
                                
                                //GeometryReader { proxy in
                                Capsule()
                                    .fill(.linearGradient(.init(colors: [.green ,.yellow, .orange]), startPoint: .leading, endPoint: .trailing))
                                    .frame(width: 70, height: 3)
                                // }
                                
                            }
                            Text(cast.high)
                                .font(.caption.bold())
                                .foregroundStyle(.white)
                                .frame(height: 3)
                        }
                        Divider()
                    }
                }
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

struct TenDayForecastView_Previews: PreviewProvider {
    static var previews: some View {
        TenDayForecastView()
    }
}
