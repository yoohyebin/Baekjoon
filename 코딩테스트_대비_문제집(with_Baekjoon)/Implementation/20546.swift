//8ms
let money = Int(readLine()!)!
let stocks = readLine()!.split(separator: " ").map{Int(String($0))!}

func calBNP() -> Int {
    var cash = money
    var cnt = 0
    
    for stock in stocks {
        if cash >= stock {
            cnt += cash/stock
            cash %= stock
        }
    }
    return cnt*stocks[13] + cash
}
func calTIMING() -> Int {
    var cash = money
    var cnt = 0
    
    for i in 3..<14 {
        if stocks[i-3] < stocks[i-2] && stocks[i-2] < stocks[i-1] && stocks[i-1] < stocks[i] {
            cash += stocks[i]*cnt
            cnt = 0
        }else if stocks[i-3] > stocks[i-2] && stocks[i-2] > stocks[i-1] && stocks[i-1] > stocks[i]{
            if cash >= stocks[i] {
                cnt += cash/stocks[i]
                cash %= stocks[i]
            }
        }
    }
    
    return cnt*stocks[13]+cash
}

let bnp = calBNP()
let timing = calTIMING()

print(timing > bnp ? "TIMING" : (bnp > timing ? "BNP" : "SAMESAME"))
