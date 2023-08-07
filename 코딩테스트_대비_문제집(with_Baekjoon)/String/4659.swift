//8ms
let vowels = ["a", "e", "i", "o", "u"]
while true {
    let input = readLine()!
    if input == "end" {break}
    
    var consonantCnt = 0, vowelCnt = 0
    var isAcceptable = false
    var word = [String]()
    
    for s in input.map{String($0)} {
        if vowels.contains(s) {
            consonantCnt = 0
            vowelCnt += 1
            isAcceptable = true
        }else {
            consonantCnt += 1
            vowelCnt = 0
        }
        
        if consonantCnt == 3 || vowelCnt == 3 {
            isAcceptable = false
            break
        }
        
        if !word.isEmpty && word.last! == s && s != "e" && s != "o" {
            isAcceptable = false
            break
        }
        
        word.append(s)
    }
    
    if isAcceptable {
        print("<\(input)> is acceptable.")
    }else {
        print("<\(input)> is not acceptable.")
    }
}
