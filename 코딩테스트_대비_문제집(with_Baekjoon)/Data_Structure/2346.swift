//8ms
let _ = Int(readLine()!)
var balloons = readLine()!.split(separator: " ").enumerated().map{ ($0+1,Int(String($1))!) }
var index = 0, result = ""

while true {
    var current = balloons.remove(at: index)
    result += "\(current.0) "
    if balloons.count == 0 { break }

    index += current.1 > 0 ? (current.1-1) : current.1
    index = (index >= 0) ? index : balloons.count + index % balloons.count
    index %= balloons.count
}

print(result)
