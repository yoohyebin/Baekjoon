
//308ms
while true {
    let n = Int(readLine()!)!
    var count = 0
    
    if n == 0 {
        break
    }else if n == 1 {
        print("1")
        continue
    }

    var arr: [Int] = Array(repeating: 1, count: (2 * n) + 1 )
    for i in 2...(2 * n) {
        arr[i] = i
    }
    for j in 2...(2 * n) {
        for k in stride(from: j + j, through: (2 * n), by: j) {
            arr[k] = 0
        }
    }

    for w in (n + 1)...(2 * n) {
        if arr[w] != 0 {
            count += 1
        }
    }
    print("\(count)")
    
    
}

//16ms
let limit = 123456 * 2

func getPrime() -> [Bool]{
    var prime = [false,false] + Array(repeating: true, count: limit-1)
    for i in 2...limit {
        if prime[i] {
            for j in stride(from: i*2, to: limit+1, by: i) {
                prime[j] = false
            }
        }
    }
    return prime
}

let primes = getPrime()

var csum = Array(repeating: 0, count: limit + 1)
csum[2] = 1

for i in 3...limit {
    csum[i] = primes[i] ? csum[i-1] + 1 : csum[i-1]
}

while true {
    let n = Int(readLine()!)!
    if n == 0 {break}
    print(csum[2*n]-csum[n])
}
