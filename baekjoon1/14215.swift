//8ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var maxValue = min(input[2] , input[0]+input[1]-1)

print(input[0]+input[1]+maxValue)
