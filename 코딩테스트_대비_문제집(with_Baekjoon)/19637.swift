//320ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var powerString = [String]()
var powerInt = [Int]()

for _ in 0..<n {
    let t = readLine()!.split(separator: " ").map{String($0)}
    powerString.append(t[0])
    powerInt.append(Int(t[1])!)
}

for _ in 0..<m {
    let p = Int(readLine()!)!
    var lowIndex: Int = 0
    var highIndex: Int = n-1
    var answerIndex: Int = 0
        
    while lowIndex <= highIndex {
        let middleIndex = (lowIndex + highIndex) / 2
            
        if p <= powerInt[middleIndex] {
            highIndex = middleIndex - 1
            answerIndex = middleIndex
        }
        else {
            lowIndex = middleIndex + 1
        }
    }
    print(powerString[answerIndex])
}
