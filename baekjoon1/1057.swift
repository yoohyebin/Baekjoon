let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var (n, round1, round2) = (input[0], input[1], input[2])
var cnt = 0

while round1 != round2 {
    round1 -= round1/2
    round2 -= round2/2
    cnt += 1
}

print(cnt)
