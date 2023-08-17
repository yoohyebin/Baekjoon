print(readLine()!.map{$0.uppercased() == String($0) ? $0.lowercased() : $0.uppercased()}.joined())
