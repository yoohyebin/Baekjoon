//8ms
func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a%b)
}
func lcm(_ a: Int, _ b: Int) -> Int {
    return a*b/gcd(a,b)
}
let n = Int(readLine()!)!

for _ in 0..<n{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    print(lcm(input[0], input[1]))
}
