words = {}
dictionary = open('words','r')
for line in dictionary:
    word = line.strip()
    c_list = sorted(word)
    key = ""
    for c in c_list:
        key += c
    # print(key, word)
    if key not in words.keys():
        words[key] = [word]
    else:
        words[key] = words[key] + [word]
dictionary.close()

if __name__ == "__main__":
    while True:
        search_word = input("Please enter a word: ")
        c_list = sorted(search_word)
        search_key = ""
        for c in c_list:
            search_key += c
        if search_key in words.keys():
            repr_str = ""
            for word in words[search_key]:
                repr_str += word + ', '
            repr_str = repr_str[:-2]
            print("The anagrams for {} are: ".format(search_word))
            print(repr_str)