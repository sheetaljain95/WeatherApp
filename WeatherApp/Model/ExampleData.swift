//
//  ExampleData.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 07/02/23.
//

import Foundation

class ExampleData {
    
    static let currentWeather = WeatherModel(id: UUID(), city: "Bengaluru", weather: CurrentWeather(id: UUID(), current: "28°", high: "30°", low: "20°", clouds: .partlyClouded))
    
    var daysWeather = [DaysWeather]()
    var weeksWeather = [WeeksWeather]()
    
    var time1 = DaysWeather(id: UUID(), time: "Now", high: "30°", low: "20°", clouds: .sunny)
    var time2 = DaysWeather(id: UUID(), time: "5 AM", high: "33°", low: "21°", clouds: .raining)
    var time3 = DaysWeather(id: UUID(), time: "6 AM", high: "35°", low: "19°", clouds: .partlyClouded)
    var time4 = DaysWeather(id: UUID(), time: "7 AM", high: "33°", low: "16°", clouds: .clouded)
    var time5 = DaysWeather(id: UUID(), time: "8 AM", high: "37°", low: "20°", clouds: .raining)
    var time6 = DaysWeather(id: UUID(), time: "9 AM", high: "38°", low: "21°", clouds: .partlyClouded)
    var time7 = DaysWeather(id: UUID(), time: "10 AM", high: "38°", low: "21°", clouds: .partlyClouded)
    var time8 = DaysWeather(id: UUID(), time: "11 AM", high: "38°", low: "21°", clouds: .partlyClouded)

    
    var day1 = WeeksWeather(id: UUID(), day: "Today", high: "30°", low: "23°", clouds: .sunny)
    var day2 = WeeksWeather(id: UUID(), day: "Mon", high: "34°", low: "39°", clouds: .sunny)
    var day3 = WeeksWeather(id: UUID(), day: "Tue", high: "33°", low: "15°", clouds: .partlyClouded)
    var day4 = WeeksWeather(id: UUID(), day: "Wed", high: "36°", low: "18°", clouds: .raining)
    var day5 = WeeksWeather(id: UUID(), day: "Thu", high: "38°", low: "17°", clouds: .partlyClouded)
    var day6 = WeeksWeather(id: UUID(), day: "Fri", high: "36°", low: "20°", clouds: .clouded)
    var day7 = WeeksWeather(id: UUID(), day: "Sat", high: "28°", low: "19°", clouds: .sunny)
    var day8 = WeeksWeather(id: UUID(), day: "Sun", high: "30°", low: "20°", clouds: .partlyClouded)
    var day9 = WeeksWeather(id: UUID(), day: "Mon", high: "29°", low: "25°", clouds: .clouded)
    var day10 = WeeksWeather(id: UUID(), day: "Tus", high: "30°", low: "23°", clouds: .partlyClouded)

    init() {
        daysWeather.append(contentsOf: [time1, time2, time3, time4, time5, time6, time7, time8])
        weeksWeather.append(contentsOf: [day1, day2, day3, day4, day5, day6, day7, day8, day9, day10])
    }
    
    func getImage(weather: Cloud) -> String {
        switch weather {
        case .partlyClouded:
            return "cloud.min"
        case .clouded:
            return "cloud.min"
        case .sunny:
            return "sun.min"
        case .raining:
            return "rain.min"
        case .snowing:
            return "snow.min"
        }
    }

}
