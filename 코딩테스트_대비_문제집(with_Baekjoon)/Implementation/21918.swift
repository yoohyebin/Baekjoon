//160ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var lamp = readLine()!.split(separator: " ").map{Int(String($0))!}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    if input[0] == 1 {
        lamp[input[1]-1] = input[2]
    }else if input[0] == 2 {
        for i in input[1]-1...input[2]-1 {
            lamp[i] = lamp[i] == 0 ? 1 : 0
        }
    }else if input[0] == 3 {
        for i in input[1]-1...input[2]-1 {
            lamp[i] = 0
        }
    }else if input[0] == 4 {
        for i in input[1]-1...input[2]-1 {
            lamp[i] = 1
        }
    }
}

print(lamp.map{String($0)}.joined(separator: " "))
