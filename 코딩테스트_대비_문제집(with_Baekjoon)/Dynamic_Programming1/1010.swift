//8ms
let t = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 31), count: 31)

func river(_ x: Int, _ y: Int) -> Int {
    if x == y || y == 0 {
        return 1
    }
    if dp[x][y] != 0{
        return dp[x][y]
    }
    dp[x][y] = river(x-1, y-1) + river(x-1, y)
    return dp[x][y]
}


for _ in 0..<t {
    let we = readLine()!.split(separator: " ").map{Int(String($0))!}
    let w = we[0], e = we[1]
    
    print(river(e,w))
}
