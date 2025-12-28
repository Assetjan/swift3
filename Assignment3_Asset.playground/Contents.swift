import Foundation

print("ARRAYS")

var movieTitles = ["Inception", "Interstellar", "Breaking Bad", "Attack on Titan", "The Dark Knight"]

print("First:", movieTitles.first ?? "—")
print("Last:", movieTitles.last ?? "—")

movieTitles.append("The Matrix")

if movieTitles.indices.contains(2) {
    movieTitles.remove(at: 2)
}

for (i, title) in movieTitles.enumerated() {
    print("\(i + 1). \(title)")
}

print("Q1 Answer: An Array is an ordered collection that stores values of the same type.")
print("Q2 Answer: The first index is 0.")
print("Q3 Answer: Use the count property (array.count).")

print("SETS")

var heroes: Set<String> = ["Iron Man", "Thor", "Batman", "Naruto", "Goku"]
var villains: Set<String> = ["Thanos", "Joker", "Madara", "Frieza", "Loki"]

print("Union:", heroes.union(villains))
print("Intersection:", heroes.intersection(villains))
print("Difference (heroes - villains):", heroes.subtracting(villains))

print("Contains Batman:", heroes.contains("Batman"))

heroes.insert("Spider-Man")
heroes.remove("Thor")

print("Updated heroes:", heroes)

print("Set vs Array: A Set stores unique elements with no guaranteed order; an Array keeps order and allows duplicates.")

print("Q1 Answer: Set is used for unique values because it automatically prevents duplicates.")
print("Q2 Answer: Use intersection to find shared elements.")
print("Q3 Answer: No, Sets cannot store duplicates because all elements must be unique.")

print("DICTIONARIES")

var powerLevel: [String: Int] = [
    "Jojo": 100,
    "Goku": 9000,
    "Naruto": 8500
]

print("Value for Goku:", powerLevel["Goku"] ?? -1)

powerLevel["Batman"] = 7000
powerLevel["Jojo"] = 120
powerLevel.removeValue(forKey: "Naruto")

for (name, score) in powerLevel {
    print("\(name): \(score)")
}

print("Q1 Answer: A Dictionary is a collection of key–value pairs.")
print("Q2 Answer: Keys identify items; values store the data linked to each key.")
print("Q3 Answer: No, keys must be unique so each key maps to exactly one value.")

print("NESTED COLLECTIONS")

var teams: [String: [String]] = [
    "Team Alpha": ["Asset", "Nurs", "Tamir"],
    "Team Beta": ["a", "b"]
]

if let firstTeamKey = teams.keys.sorted().first, let firstTeamMembers = teams[firstTeamKey] {
    print("Members of first team (\(firstTeamKey)):", firstTeamMembers)
}

if let firstTeamKey = teams.keys.sorted().first {
    teams[firstTeamKey, default: []].append("Danial")
}

teams["Team Gamma"] = ["c", "d", "g"]

for (team, members) in teams {
    print(team)
    for member in members {
        print("- \(member)")
    }
}

print("Q1 Answer: It is useful when you need grouped data with fast lookup by category.")
print("Q2 Answer: A dictionary where each student name maps to an array of scores.")

print("PRACTICAL CHALLENGE HERO MANAGER")

var heroesList = ["Iron Man", "Thor", "Hulk"]

var heroPower: [String: Int] = [
    "Iron Man": 800,
    "Thor": 900,
    "Hulk": 950
]

heroesList.append("Spider-Man")
heroPower["Spider-Man"] = 750

if let strongest = heroPower.max(by: { $0.value < $1.value }) {
    print("Strongest hero:", strongest.key, "with power", strongest.value)
}

let activeHeroes: Set<String> = ["Iron Man", "Spider-Man", "Hulk", "Doctor Strange"]
let participating = activeHeroes.intersection(Set(heroesList))

for hero in participating.sorted() {
    let power = heroPower[hero] ?? 0
    let status = power >= 800 ? "READY" : "NEEDS TRAINING"
    print("\(hero) - \(status) (power: \(power))")
}
