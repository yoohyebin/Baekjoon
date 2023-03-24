var sum = String(Int(readLine()!)! * Int(readLine()!)! * Int(readLine()!)!).map{Int(String($0))!}
var result = [Int]()

for i in 0...9{
    print(sum.filter{$0 == i}.count)
}
