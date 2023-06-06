var fibo = [0, 1]
for i in 2...40 {
    fibo.append(fibo[i - 2] + fibo[i - 1])
}

let n = Int(readLine()!)!

print(fibo[n], n - 2)
