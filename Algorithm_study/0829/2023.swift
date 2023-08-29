//12ms
let N = Int(readLine()!)!
let primes = [2, 3, 5, 7]
var result = [Int]()

func isPrime(_ n: Int) -> Bool {
    var i = 2
    if n<2 { return false }
    
    while i*i <= n {
        if n%i == 0 { return false }
        i+=1
    }
    return true
}

func primeNumber(_ depth: Int, _ n: Int) {
    if depth == N {
        result.append(n)
    }
    
    for i in stride(from: 1, to: 10, by: 2) {
        let temp = n*10+i
        if isPrime(temp) {
            primeNumber(depth+1, temp)
        }
    }
}

for prime in primes {
    primeNumber(1, prime)
}

print(result.map{String($0)}.joined(separator: "\n"))
