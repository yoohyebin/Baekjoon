//84ms
let n = Int(readLine()!)!
var minX = 10000, maxX = -10000
var minY = 10000, maxY = -10000

for _ in 0..<n {
   let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    minX = min(minX, input[0])
    maxX = max(maxX, input[0])
    minY = min(minY, input[1])
    maxY = max(maxY, input[1])
}
print((maxX-minX)*(maxY-minY))
