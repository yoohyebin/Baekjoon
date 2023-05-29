//8ms
let score = ["A+": 4.5, "A0": 4.0, "B+": 3.5, "B0": 3.0, "C+": 2.5, "C0": 2.0, "D+": 1.5, "D0": 1.0, "F": 0.0]
var sum = 0.0, cnt = 0.0

for _ in 0..<20 {
    let subject = readLine()!.split(separator: " ").map{String($0)}
    
    if subject[2] == "P" {
        continue
    }
    sum += (Double(subject[1])! * score[subject[2]]!)
    cnt += Double(subject[1])!
}

print(sum/cnt)
