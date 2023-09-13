let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (a,b,c) = (input[0], input[1], input[2])
var car = Array(repeating: 0, count: 101)

for _ in 0..<3 {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    for i in data[0]..<data[1] {
        car[i] += 1
    }
}

var sum = 0

for i in 1...100 {
    if car[i] == 1 {
        sum += car[i]*a
    } else if car[i] == 2 {
        sum += car[i]*b
    } else if car[i] == 3 {
        sum += car[i]*c
    }
}

print(sum)
