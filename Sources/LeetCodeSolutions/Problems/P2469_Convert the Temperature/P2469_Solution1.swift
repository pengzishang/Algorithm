final class P2469_Solution1 {
    func convertTemperature(_ celsius: Double) -> [Double] {
        let kelvin = celsius + 273.15
        let fahrenheit = celsius * 1.80 + 32.00
        return [kelvin, fahrenheit]
    }
}
