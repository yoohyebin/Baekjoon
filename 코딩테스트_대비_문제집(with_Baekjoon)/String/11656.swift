let sValue = readLine()!
var result = [String]()

for i in 1...sValue.count {
    result.append(String(sValue.suffix(i)))
}
print(result.sorted().joined(separator: "\n"))
