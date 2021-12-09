import sqlite3
import pandas

def has_value(cursor, table, column, value):
    query = 'SELECT 1 from {} WHERE {} = ? LIMIT 1'.format(table, column)
    return cursor.execute(query, (value,)).fetchone() is not None

conn = sqlite3.connect('python_db/pokedex_db.sqlite')
c = conn.cursor()

u_in = 'test'
while(u_in != 'q'):
    print("----------Pokedex----------")
    print("\tPlease select one of the options below")
    print('\tAdd Move: m')
    print('\tAdd User: u')
    print('\tAssign pokemon to team slot: p')
    print("\tquit: q")
    u_in = input('\n\tselection: ')
    if(u_in == 'm'):
        # add move to pokemon
        c.execute('''
                UPDATE Pokemon
                SET m2 = 'Absorb'
                where id = 1
                ''')
    elif(u_in == 'u'):
        # adds a user named test to the user table 
        uname = input('\n\t Enter the username: ')
        if has_value(c, 'User', 'user_id', uname):
            print('There is already a user with the name %s\n' % uname)
        else:
            c.execute('''
                    INSERT INTO User (user_id)
                    SELECT '%s'
                        WHERE NOT EXISTS (SELECT 1 FROM User WHERE user_id = '%s')
                    '''%(uname, uname))
            print('\n\tUser added')

    elif(u_in == 'p'):
        # adds the pokemon to the users team, still need to figure out how to input which pokemon they are adding 
        u_select = input('\n\tWhat user do you want to add the pokemon to: ')
        p_slot = input('\n\tWhat team slot do you want to add the pokemon to (1-6): ')
        while(int(p_slot) < 1 or int(p_slot) > 6):
            p_slot = input('\n\tPlease input a valid team slot (1-6): ')

        p_name = input('\n\tWhat is the id of the pokemon you want to add: ')
       
#currently it just accepts an ID of the pokemon idealy we would allow this to accept any name that is in the list of pokemon,
# can probably accomplish this by something similar to how we validate if a user is already in the list
        c.execute('''
                UPDATE User
                Set %s = %s
                WHERE user_id = '%s'
                '''%('p'+p_slot, p_name, u_select))
        
    else: 
        print('\n\n\tPlease enter a valid input')
        
    conn.commit()



#something i saw online might be usefull for when we have to make a lot of insert statments
#     insert_stmt = ("INSERT INTO Checks (bookID, Username) "  # note the space at end of string
#                   "SELECT ?, ? "
#                   "WHERE NOT EXISTS (SELECT 1 FROM Checks WHERE bookID = ? and Username = ?)")
# checkCur.execute(insert_stmt, (bookid, uname) * 2)  # no need to repeat the bookid, uname combo twice; just multiply the tuple by 2