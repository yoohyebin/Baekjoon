//8ms
var firstString = readLine()!
var secondString = readLine()!
var arr = Array(repeating: 0, count: 26)

for s in firstString {
    arr[Int(exactly: s.asciiValue!)!-97] += 1
}
for s in secondString {
    arr[Int(exactly: s.asciiValue!)!-97] -= 1
}

print(arr.reduce(0){abs($0) + abs($1)})

// 다른 풀이, 8ms
var arrA = readLine()!.map{ String($0) }
var arrB = readLine()!.map{ String($0) }

var res: Int = 0
for a in arrA {
    if arrB.contains(a) {
        if let index = arrB.firstIndex(of: a) {
            arrB.remove(at: index)
        }
    } else {
        res += 1
    }
}
print(res+arrB.count)
