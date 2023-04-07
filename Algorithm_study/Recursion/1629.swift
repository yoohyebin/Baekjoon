//8ms
let input = readLine()!.split{$0 == " "}.map{Int($0)!}
let (a, b, c) = (input[0], input[1], input[2])

func power(_ x: Int) -> Int {
    if x == 0 {
        return 1
    }
    var res = power(x / 2)
    res = res * res % c
    if x % 2 == 1 {
        res = res * a % c
    }
    return res
}

print(power(b))
