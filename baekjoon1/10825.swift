//260ms
struct Score {
    var name: String
    var korean: Int
    var english: Int
    var math: Int
}

let n = Int(readLine()!)!
var students = [Score]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    students.append(Score(name: String(input[0]),
                          korean: Int(String(input[1]))!,
                          english: Int(String(input[2]))!,
                          math: Int(String(input[3]))!))
}
students = students.sorted {
    if $0.korean == $1.korean {
        if $0.english == $1.english {
            if $0.math == $1.math {
                return $0.name < $1.name
            }else{
                return $0.math > $1.math
            }
        }else{
            return $0.english < $1.english
        }
    }else{
        return $0.korean > $1.korean
    }
}

for i in students {
    print(i.name)
}
