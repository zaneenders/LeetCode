import RegexBuilder

// https://leetcode.com/problems/roman-to-integer/
func romanToInt(_ s: String) -> Int {
    /*
    Symbol       Value
    I             1
    V             5
    X             10
    L             50
    C             100
    D             500
    M             1000
    */
    // Parsing Left to Right
    var stack: [Int] = [0]
    var idx = s.startIndex
    var n: (String.Index, Int) = (idx, 0)
    repeat {
        guard let nn = getNext(idx) else {
            break
        }
        n = nn
        if n.1 <= stack[stack.count - 1] {
            let subSum = stack[1...].reduce(0) { r, i in
                if stack.count > 2 {
                    return abs(r - i)
                } else {
                    return r + i
                }
            }
            stack = [stack[0] + abs(subSum)]
        }
        stack.append(n.1)
        idx = n.0
    } while idx <= s.endIndex
    let subSum = stack[1...].reduce(0) { r, i in
        if stack.count > 2 {
            return abs(r - i)
        } else {
            return r + i
        }
    }
    return stack[0] + abs(subSum)

    func getNext(_ next: String.Index) -> (String.Index, Int)? {
        if let c = s[next...].firstMatch(of: .word) {
            let v: Int
            switch c.0 {
            case "I":
                v = 1
            case "V":
                v = 5
            case "X":
                v = 10
            case "L":
                v = 50
            case "C":
                v = 100
            case "D":
                v = 500
            case "M":
                v = 1000
            default:
                return nil
            }
            return (c.endIndex, v)
        }
        return nil
    }
}

func romanToInt2(_ s: String) -> Int {
    var sum = 0
    let end = s.index(before: s.endIndex)
    for i in s.indices {
        let l = val(s[i])
        if i == end {
            sum += l
        } else {
            let next = s.index(after: i)
            let r = val(s[next])
            if l >= r {
                sum += l
            } else {
                sum -= l
            }
        }
    }
    return sum

    func val(_ s: Character) -> Int {
        switch s {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            fatalError()
        }
    }
}
