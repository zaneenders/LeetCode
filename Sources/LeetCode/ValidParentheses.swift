// https://leetcode.com/problems/valid-parentheses/description/
func isValid(_ s: String) -> Bool {
    enum Type {
        case bracket
        case parentheses
        case curlyBrace
    }
    enum State {
        case open(Type)
        case close(Type)
    }
    let t: [State] = s.compactMap { c in
        switch c {
        case "{":
            return .open(.curlyBrace)
        case "[":
            return .open(.bracket)
        case "(":
            return .open(.parentheses)
        case "}":
            return .close(.curlyBrace)
        case "]":
            return .close(.bracket)
        case ")":
            return .close(.parentheses)
        default:
            return nil
        }
    }
    var stack: [Type] = []
    for c in t {
        switch c {
        case .close(let t):
            if stack.isEmpty {
                return false
            } else {
                switch (stack.last!, t) {
                case (.bracket, .bracket),
                    (.parentheses, .parentheses),
                    (.curlyBrace, .curlyBrace):
                    stack.removeLast()
                default:
                    return false
                }
            }
        case .open(let t):
            stack.append(t)
        }
    }
    return stack.isEmpty
}
