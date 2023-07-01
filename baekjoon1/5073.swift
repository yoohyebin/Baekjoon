//12ms
while true {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
    let (a,b,c) = (input[0], input[1], input[2])
    
    if a == 0 && b == 0 && c == 0 {
        break
    }
    if c >= a+b {
        print("Invalid")
    }
    
    else if a == b && a == c && b == c {
        print("Equilateral")
    }else if a == b || a == c || b == c{
        print("Isosceles")
    }else if a != b && a != c && b != c{
        print("Scalene")
    }
