//204ms 
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var student = Array(repeating: [Int](), count: n+1)
var inDegree = Array(repeating: 0, count: n+1)
var queue = [Int]()
var result = [Int]()

for _ in 0..<m {
    let ab = readLine()!.split(separator: " ").map{Int(String($0))!}
    student[ab[0]].append(ab[1])
    inDegree[ab[1]] += 1
}

for i in 1...n {
    if inDegree[i] == 0 {
        queue.append(i)
    }
}

while !queue.isEmpty {
    let tmp = queue.removeFirst()
    result.append(tmp)
    
    for i in student[tmp] {
        inDegree[i] -= 1
        if inDegree[i] == 0 {
            queue.append(i)
        }
    }
}

print(result.map{String($0)}.joined(separator: " "))
