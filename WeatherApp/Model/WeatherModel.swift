//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 07/02/23.
//

import Foundation

struct WeatherModel {
    var id: UUID
    var city: String
    var weather: CurrentWeather
}

struct CurrentWeather {
    var id: UUID
    var current : String
    var high : String
    var low : String
    var clouds: Cloud
}

struct DaysWeather: Identifiable {
    var id: UUID
    var time : String
    var high : String
    var low : String
    var clouds: Cloud
}

struct WeeksWeather: Identifiable {
    var id: UUID
    var day : String
    var high : String
    var low : String
    var clouds: Cloud
}

enum Cloud: String {
    case partlyClouded = "Partially Clouded"
    case clouded = "Clouded"
    case sunny = "Sunny"
    case raining = "Raining"
    case snowing = "Snowing"
}
