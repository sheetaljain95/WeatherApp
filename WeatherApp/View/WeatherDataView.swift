//
//  WeatherDataView.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 08/02/23.
//

import SwiftUI

struct WeatherDataView: View {
    var body: some View {
        // 10 days Forecast
        TenDayForecastView()
         
            CustomStackView {
                Label {
                    Text("Air Quality")
                } icon: {
                    Image(systemName: "circle.hexagongrid.fill")
                }
            } contentView: {
                VStack(alignment: .leading, spacing: 10) {
                    Text("118 - Moderately Polluted")
                        .font(.title3.bold())
                    Text("Air quality index is 118, which is similar to yesterday about this time")
                        .fontWeight(.semibold)
                    ZStack(alignment: .leading) {
                        GeometryReader { proxy in
                            Capsule()
                                .fill(.linearGradient(.init(colors: [.green ,.yellow, .orange,.red]), startPoint: .leading, endPoint: .trailing))
                                .frame(width: proxy.size.width, height: 4)
                            Capsule()
                                .fill(.primary)
                                .foregroundStyle(.white)
                                .frame(width: 5, height: 5)
                                .border(.blue)
                                .offset(x: 70)
                        }
                    }
                }
                .foregroundStyle(.white)
            }
            
            CustomStackView{
                Label {
                    Text("PRECIPITATION")
                } icon: {
                    Image(systemName: "umbrella.fill")
                }
            } contentView: {
                VStack(alignment: .leading, spacing: 10) {
                    Image("map")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(8)
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
            
            
            HStack {
                CustomStackView{
                    Label {
                        Text("UV Index")
                    } icon: {
                        Image("sun.min")
                    }
                } contentView: {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("4")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("Moderate")
                            .font(.title2)
                            .fontWeight(.semibold)
                        ZStack(alignment: .leading) {
                                Capsule()
                                    .fill(.linearGradient(.init(colors: [.green ,.yellow, .orange,.red]), startPoint: .leading, endPoint: .trailing))
                                    .frame(width: 120, height: 4)
                                Capsule()
                                    .fill(.primary)
                                    .foregroundStyle(.white)
                                    .frame(width: 5, height: 5)
                                    .border(.blue)
                                    .offset(x: 40)
                            }
                        Text("Use sun protection till 4 pm")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                }
                
                CustomStackView{
                    Label {
                        Text("PRECIPITATION")
                    } icon: {
                        Image("drop.fill")
                    }
                } contentView: {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("0 mm")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("in last 24 hours")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("None expected in last 10 days.")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading)
                }
            }
            
            HStack{
                CustomStackView{
                    Label {
                        Text("VISIBILITY")
                    } icon: {
                        Image("sun.min")
                    }
                } contentView: {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("20 km")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("It's perfectly clear right now")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                }
                
                CustomStackView{
                    Label {
                        Text("HUMIDITY")
                    } icon: {
                        Image("drop.fill")
                    }
                } contentView: {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("22 %")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("The dew point is 4° right now")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading)
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

struct WeatherDataView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDataView()
    }
}
