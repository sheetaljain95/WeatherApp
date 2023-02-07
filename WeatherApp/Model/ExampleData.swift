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
    
    var time1 = DaysWeather(id: UUID(), time: "6", high: "30°", low: "20°", clouds: .partlyClouded)
    var time2 = DaysWeather(id: UUID(), time: "7", high: "30°", low: "20°", clouds: .partlyClouded)
    var time3 = DaysWeather(id: UUID(), time: "8", high: "30°", low: "20°", clouds: .partlyClouded)
    var time4 = DaysWeather(id: UUID(), time: "9", high: "30°", low: "20°", clouds: .partlyClouded)
    var time5 = DaysWeather(id: UUID(), time: "10", high: "30°", low: "20°", clouds: .partlyClouded)
    var time6 = DaysWeather(id: UUID(), time: "11", high: "30°", low: "20°", clouds: .partlyClouded)
    
    
    var day1 = WeeksWeather(id: UUID(), day: "Monday", high: "30°", low: "20°", clouds: .partlyClouded)
    var day2 = WeeksWeather(id: UUID(), day: "Tuesday", high: "30°", low: "20°", clouds: .partlyClouded)
    var day3 = WeeksWeather(id: UUID(), day: "Wednesday", high: "30°", low: "20°", clouds: .partlyClouded)
    var day4 = WeeksWeather(id: UUID(), day: "Thursday", high: "30°", low: "20°", clouds: .partlyClouded)
    var day5 = WeeksWeather(id: UUID(), day: "Friday", high: "30°", low: "20°", clouds: .partlyClouded)
    var day6 = WeeksWeather(id: UUID(), day: "Saturday", high: "30°", low: "20°", clouds: .partlyClouded)
    var day7 = WeeksWeather(id: UUID(), day: "Sunday", high: "30°", low: "20°", clouds: .partlyClouded)
    
    init() {
        daysWeather.append(contentsOf: [time1, time2, time3, time4, time5, time6])
        weeksWeather.append(contentsOf: [day1, day2, day3, day4, day5, day6, day7])
    }
}
