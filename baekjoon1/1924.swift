let dayOfMonth = [0,31,28,31,30,31,30,31,31,30,31,30,31]
let dayOfWeek = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
let xy = readLine()!.split(separator: " ").map{Int(String($0))!}
var (x,y) = (xy[0], xy[1])

for i in 1..<x {
    y += dayOfMonth[i]
}

print("\(dayOfWeek[y%7])")
