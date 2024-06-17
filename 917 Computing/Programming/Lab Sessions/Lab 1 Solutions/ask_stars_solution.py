"""
This progam creates an interactive number of stars
"""
#Method enables us able to handle both cases neatly
def draw_stars(rows, increasing=True):
    if increasing:
        for i in range(0,rows):
            str = ""
            for j in range(0,i+1):
                str += "*"
            print(str)
    else:
        for i in range(0,rows):
            str = ""
            for j in range(0,rows-i):
                str += "*"
            print(str)

#Start the program - remember the name = main thing for modules!
if __name__ == "__main__":
    rows = int(input("How many rows would you like?"))
    user_increasing = input("Would you like increasing/decreasing rows?")

    if user_increasing == "increasing":
        draw_stars(rows,True)
    else:
        draw_stars(rows,False)