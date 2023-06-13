var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: 21), count: 21), count: 21)

func w (_ a: Int, _ b: Int, _ c: Int) -> Int{
    if a <= 0 || b <= 0 || c <= 0 {
        return 1
    }
    if a < 21 && b < 21 && c < 21 && dp[a][b][c] != 0 {
        return  dp[a][b][c]
    }
    
    if a > 20 || b > 20 || c > 20 {
        dp[20][20][20] = w(20, 20, 20)
        return  dp[20][20][20]
    }
    
    if a < b && b < c {
        dp[a][b][c] = w(a,b,c-1) + w(a,b-1,c-1) - w(a,b-1,c)
        return dp[a][b][c]
    }
            
    dp[a][b][c] = w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)
    return dp[a][b][c]
}

while true {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = input[0], b = input[1], c = input[2]
    
    if a == -1 && b == -1 && c == -1 {break}
    
    print("w(\(a), \(b), \(c)) = \(w(a, b, c))")
}
