var n = Int(readLine()!)!
var queue = Array(1...n)
var tmp = 0

if n == 1 { print(1) }
else{
    while true{
        queue[tmp] = 0
        queue.append(queue[tmp + 1])
        queue[tmp + 1] = 0
        if queue[queue.count - 2] == 0 { print(queue.last!); break }
        tmp += 2
    }
}
