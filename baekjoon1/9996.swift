let n = Int(readLine()!)!
let patterns = readLine()!.split(separator: "*").map{String($0)}
let firstPattern = patterns[0]
let lastPattern = patterns[1]
var result = [String]()

for _ in 0..<n{
    let fileName = readLine()!
    
    if firstPattern.count + lastPattern.count > fileName.count{
        result.append("NE")
    }
    else if (fileName.hasPrefix(firstPattern) == true) && (fileName.hasSuffix(lastPattern) == true){
        result.append("DA")
    }
    else{
        result.append("NE")
    }
}

print(result.joined(separator: "\n"))
