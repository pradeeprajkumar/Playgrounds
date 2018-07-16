func isSuspiciousRespondent(ans1: Bool, ans2: Bool, ans3: Bool) -> Bool {
    return ans1 == ans2 && ans1 == ans3
}

print(isSuspiciousRespondent(ans1: true, ans2: false, ans3: true))
