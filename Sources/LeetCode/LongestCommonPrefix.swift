// https://leetcode.com/problems/longest-common-prefix/description/
func longestCommonPrefix(_ strs: [String]) -> String {
    var out = ""
    var pos = 0
    var cur = Character(" ")
    var r = true
    while r {
        for word in strs {
            if pos < word.count {  // check string size
                let idx = word.index(word.startIndex, offsetBy: pos)
                let c: Character = word[idx]
                if cur == Character(" ") {
                    cur = c
                } else if cur != c {
                    r = false
                }
            } else {
                r = false
            }
        }
        if r {
            pos += 1  // update position in words
            out.append(cur)
        }
        cur = Character(" ")
    }
    return out
}

func longestCommonPrefix2(_ strs: [String]) -> String {
    // Longest prefix is at most the shortest word.
    var prefix = strs.min() ?? ""
    for str in strs {
        // Remove characters till we have a matching prefix
        while !str.hasPrefix(prefix) {
            prefix.removeLast()
        }
    }
    return prefix
}
