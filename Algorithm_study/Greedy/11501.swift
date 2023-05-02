//2704ms
let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    var sum = 0, max = 0
    
    for i in (0...n-1).reversed() {
        if max < arr[i] {
            max = arr[i]
        }
        if max > arr[i] {
            sum += (max-arr[i])
        }
    }
    print("\(sum)")
}
