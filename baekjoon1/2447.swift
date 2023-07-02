//556ms
let N = Int(readLine()!)!
var star = ""

func makeStar(_ n: Int, _ i: Int, _ j: Int) {
    if (i/n)%3 == 1 && (j/n)%3 == 1 {
        star += " "
    }else {
        if n/3 == 0 {
            star += "*"
        }else {
            makeStar(n/3, i, j)
        }
    }
}

for i in 0..<N {
    for j in 0..<N {
        makeStar(N, i, j)
    }
    star += "\n"
}

print(star)
