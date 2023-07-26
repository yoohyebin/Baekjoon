//16ms
let t = Int(readLine()!)!

for _ in 0..<t {
    var arr = readLine()!.split(separator: " ").map{String($0)}
    
    while true {
        let input = readLine()!.split(separator: " ").map{String($0)}
        if input.joined(separator: " ") == "what does the fox say?" {
            print(arr.joined(separator: " "))
            break
        }
        
        while arr.contains(input[2]) {
            arr.remove(at: arr.firstIndex(of: input[2])!)
        }
    }
}
