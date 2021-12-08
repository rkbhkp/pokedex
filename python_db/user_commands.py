import sqlite3
import pandas



conn = sqlite3.connect('python_db/pokedex_db.sqlite')
c = conn.cursor()

u_in = 'test'
while(u_in != 'q'):
    print("----------Pokedex----------")
    print("\tPlease select one of the options below")
    print('\tAdd Move: m')
    print("\tquit: q")
    u_in = input('\tselection: ')
    if(u_in == 'm'):
        c.execute('''
                UPDATE Pokemon
                SET m2 = 'Absorb'
                where id = 1
                ''')
    else: 
        print('\n\n\tPlease enter a valid input')
        
conn.commit()