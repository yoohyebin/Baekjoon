//844ms
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    var temp = 1
    
    for _ in 0..<input[1] {
        temp *= input[0]
        temp %= 10
    }
    print(temp == 0 ? 10 : temp)
}
//8ms
let input = Int((readLine() ?? "")) ?? 0

for _ in 0..<input {
    let data = (readLine() ?? "").split(separator: " ").map { Int($0) ?? 0 }
    let a = data[0] % 10
    let b = data[1] % 4
    print(dataProcess(a, b))
}

func dataProcess(_ a : Int,_ b: Int) -> Int {
    if a == 0 {
        return 10
    }
    if b == 0 {
      return customPow(a, 4) % 10
    } else {
      return customPow(a, b) % 10
    }
}

func customPow(_ a : Int, _ b : Int) -> Int {
    var sum = 1
    for _ in 1...b {
        sum *= a
    }
    return sum
}
