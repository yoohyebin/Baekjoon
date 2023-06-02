//792ms
let stringValue = readLine()!.map{String($0)}
var strings = Set<String>()

for i in 0..<stringValue.count {
    var s = ""
    for j in i..<stringValue.count {
        s += stringValue[j]
        strings .insert(s)
    }
}

print(strings.count)
