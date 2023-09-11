//84ms
var n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n+1)
var before = Array(repeating: 0, count: n+1)
var result = ""
before[1] = -1

if n > 1 {
    for i in 2...n {
        dp[i] = dp[i-1]+1
        before[i] = i-1
        
        if i%2 == 0 && dp[i/2]+1 < dp[i] {
            dp[i] = dp[i/2]+1
            before[i] = i/2
        }
        
        if i%3 == 0 && dp[i/3]+1 < dp[i] {
            dp[i] = dp[i/3] + 1
            before[i] = i/3
        }
    }
}

print(dp[n])

while n != -1 {
    result += "\(n) "
    n = before[n]
}

print(result)

//8ms
class Queue<T> {
    var enqueue: [T]
    var dequeue: [T] = []
    init(_ queue: [T]) {
        enqueue = queue
    }
    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }
    func push(_ n: T) {
        enqueue.append(n)
    }
    func pop() -> T? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
    func removeAll() {
        enqueue.removeAll()
        dequeue.removeAll()
    }
}

var N = Int(readLine()!)!
var chkList: [Int: Bool] = [:]

let queue: Queue<(Int, Int, [String])> = .init([])
queue.push((N, 0, []))

while !queue.isEmpty {
    let (n, d, h) = queue.pop()!

    if n == 1 {
        print(d)
        print((h+["\(n)"]).joined(separator: " "))
        break
    }

    if n % 3 == 0 && chkList[n/3] == nil {
        chkList[n/3] = true
        queue.push((n/3, d+1, h+["\(n)"]))
    }

    if n % 2 == 0 && chkList[n/2] == nil {
        chkList[n/2] = true
        queue.push((n/2, d+1, h+["\(n)"]))
    }
    
    if chkList[n-1] == nil {
        chkList[n-1] = true
        queue.push((n-1, d+1, h+["\(n)"]))
    }
}
