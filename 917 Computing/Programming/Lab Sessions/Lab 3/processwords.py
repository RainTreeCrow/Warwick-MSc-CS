words = []
raw = open('rawwords.txt','r')
for line in raw:
    words.append(line.strip())
raw.close()

f = open("words.txt", 'w')
for word in words:
    if word.isalpha():
        f.write(word.lower() + "\n")
f.close()