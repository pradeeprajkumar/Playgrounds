func differentSymbolsNaive(s: String) -> Int {
    return Set(s.characters).count
}

print(differentSymbolsNaive(s: "cabca"))
