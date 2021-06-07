import os
import random
from time import sleep


Items =[
    'Interstellar',
    'TENET',
    'DARK',
    'Peaky blinder',
    'Narcos',
    'Money heist',
    'Crown',
    'Breaking bad',
    'Game of thrones',
    'Friends',
    'Braveheart',
    'The Constantine',
    'Money heist',
    'The big bang theory',
    'Brooklyn nine nine',
    'How I Met your Mother',
    'Two and a Half Men',
    'Modern Family',
    'Game of Thrones',
    'Inception' ,
    'The pursuit of Happiness',
    'Before Sunrise',
    'Fifty Shades of Grey',
    'Harley and Davidsons',
    'me before you',
    'the italian job',
    'minority report',
    'salt',
    'Haunting of Hill House',
    'Titans',
    'BLACK MIRROR',
    'Perfect Blue',
    'Black Swan',
    'Parasite',
    'Arrival',
    'Annihilation',
    'Stranger Things',
    ]



def display_hangman(tries):
    stages = [  # final state: head, torso, both arms, and both legs
                """
                   --------
                   |      |
                   |      O
                   |     \|/
                   |      |
                   |     / \.
                   -
                """,
                # head, torso, both arms, and one leg
                """
                   --------
                   |      |
                   |      O
                   |     \|/
                   |      |
                   |     / 
                   -
                """,
                # head, torso, and both arms
                """
                   --------
                   |      |
                   |      O
                   |     \|/
                   |      |
                   |      
                   -
                """,
                # head, torso, and one arm
                """
                   --------
                   |      |
                   |      O
                   |     \|
                   |      |
                   |     
                   -
                """,
                # head and torso
                """
                   --------
                   |      |
                   |      O
                   |      |
                   |      |
                   |     
                   -
                """,
                # head
                """
                   --------
                   |      |
                   |      O
                   |    
                   |      
                   |     
                   -
                """,
                # initial empty state
                """
                   --------
                   |      |
                   |      
                   |    
                   |      
                   |     
                   -
                """
    ]
    return stages[tries]



def create(n,coded,a,length):
    changed=""
    for i in range(n):
        changed+= coded[i]
    changed+=a

    for i in range(n+1,length) :
        changed+=coded[i]
    return changed


for n in range(10):
    print("Loading Game...")
    print("["+"#"*n +" "*(10-1-n)+"]")
    sleep(0.1)
    os.system('cls')

os.system('cls')
total_items = len(Items)
i = random.randint(0,total_items -1)
word = Items[i]
coded_word=""
letters_enterd=""
lives = 6
length = 0

for letter in word:
    length+=1
    if letter ==" ":
        coded_word+= letter
    else:
        coded_word+="_"


while True :
    print("Lives :" + str(lives))
    print(display_hangman(lives))
    print(coded_word)
    a = input("Guess a letter : ")
    
    
    if a in letters_enterd:
        os.system('cls')
        continue
    else:
        letters_enterd += a



    if a.lower() in word.lower() :
        for i in range(length):
            if ( word[i].upper() == a.upper()):
                coded_word = create(i,coded_word,word[i],length)
    else:
        lives-=1
    
    
    if coded_word in word:
        os.system('cls')
        print("The word was :" + coded_word)
        print('You win')
        break
    
    
    os.system('cls')
    
    if lives==0 :
        print("Son you ded")
        break
    else:
        continue