# Remove duplicate characters from a string

text = input("Enter a string: ")

result = ""   # empty string

for ch in text:
    if ch not in result:
        result += ch

print("String without duplicates:", result)
