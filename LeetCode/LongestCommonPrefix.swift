extension LeetCode {
    struct LongestCommonPrefix {
        func longestCommonPrefix(_ strs: [String]) -> String {
            if strs.isEmpty {
                return ""
            }

            guard let minor = strs.min(by: { $0.count < $1.count }) else {
                return ""
            }
            
            var prefix: String = ""
            var historyPrefix: String = ""
            
            for (index, _) in minor.enumerated() {
                prefix = String(minor.prefix(index + 1))
                if strs.allSatisfy( { $0.starts(with: prefix) } ) {
                    historyPrefix = prefix
                }
            }
            return historyPrefix
        }
    }
}
