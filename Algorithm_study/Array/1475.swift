//8ms
let n = readLine()!.map{Int(String($0))!}
var numArr = Array(repeating: 0, count: 10)

for i in n {
    numArr[i] += 1
}
numArr[6] = (numArr[6]+numArr[9]+1)/2
numArr[9] = numArr[6]

print(numArr.max()!)
