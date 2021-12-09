import sqlite3
#can be used to make if statments to see if there is a value in a column
def has_value(cursor, table, column, value):
    query = 'SELECT 1 from {} WHERE {} = ? LIMIT 1'.format(table, column)
    return cursor.execute(query, (value,)).fetchone() is not None

conn = sqlite3.connect('python_db/pokedex_db.sqlite')
c = conn.cursor()

u_in = 'test'
while(u_in != 'q'):
    print("\n\n\t-----------------Pokedex-----------------")
    
    print("\tPlease select one of the options below: \n")
    print('\tPrint a team: t')
    print('\tPrint Current stats for a pokemon: e')
    print('\tAdd Move to a pokemon: m')
    print('\tAdd Item to a pokemon: i')
    print('\tAdd User: u')
    print('\tAssign pokemon to team slot: p')
    print('\tUpdate Team Name: n')
    print('\tAdd an item, pokemon, or move to the database: y')
    print('\tSee list of pokemon, items, and moves: o')
    print('\tRemove item, pokmeon, or move: r')
    print("\tquit: q")
    u_in = input('\n\tselection: ')

    #print the conetent of a team based on teamname or userid input from the user
#could probably print the tables nicer using pandas or something similar but works good enough as is for now
    if(u_in == 't'):
        try:
            name = input('\n\tWhat is the UserId or Team name that you would like to print: ')
            if has_value(c, 'User', 'user_id', name):
                c.execute('''
                        SELECT * FROM User WHERE user_id = '%s'
                        '''%(name))
                print(c.fetchall())
            elif has_value(c, 'User', 'team_name', name):
                c.execute('''
                        SELECT * FROM User WHERE team_name = '%s'
                        '''%(name))
                print(c.fetchall())
            else:
                print('%s is not a valid UserId or team name'%(name))
        except:
            print('\n\tERROR: Could not print Team name')
    elif(u_in == 'n'):
        u_name = input('\n\tWhat is the UserID of the team you want to nickname: ')
        if has_value(c, 'User', 'user_id', u_name):
            name = input('\n\tWhat is the nickname you want to give to your team: ')
            c.execute('''
                        UPDATE User
                        SET team_name = '%s'
                        where user_id = '%s'
                        '''%(name, u_name))
    elif(u_in == 'o'):
        try:
            print('\n\tView items: i')
            print('\tView pokemon: p')
            print('\tView moves: m')
            new_u_in = input('\n\tWhat would you like to see: ')

            if(new_u_in == 'i'):
                c.execute('''
                            SELECT * FROM Item
                            ''')
                print(c.fetchall())
            if(new_u_in == 'p'):
                c.execute('''
                            SELECT * FROM Pokemon
                            ''')
                print(c.fetchall())
            if(new_u_in == 'm'):
                c.execute('''
                            SELECT * FROM Move
                            ''')
                print(c.fetchall())
            else:
                print("\n\tInvalid selection exiting")
        except:
            print("ERROR: Unable to display information")

    elif(u_in == 'r'):
        try:
            print('\tRemove an item: i')
            print('\tRemove a pokemon: p')
            print('\tRemove a move: m')
            new_u_in = input('\n\tWhat would you like to remove: ')
            if (new_u_in == 'i'):
                name = input('\n\tWhat is the name of the item you would like to remove: ')
                c.execute('''
                            DELETE FROM Item WHERE i_name = '%s'
                            '''%(name))
            elif (new_u_in == 'p'):
                name = input('\n\tWhat is the name of the pokemon you would like to remove: ')
                c.execute('''
                            DELETE FROM Pokemon WHERE p_Name = '%s'
                            '''%(name))
            elif (new_u_in == 'm'):
                name = input('\n\tWhat is the name of the move you would like to remove: ')
                c.execute('''
                            DELETE FROM Move WHERE m_name = '%s'
                            '''%(name))
            else:
                print("\n\tInvalid selection exiting")
          
                 
        except:
            print("ERROR: Unable to remove information")
    elif(u_in == 'y'):
        try:
            print('\tAdd an item: i')
            print('\tAdd a pokemon: p')
            print('\tAdd a move: m')
            new_u_in = input('\n\tWhat would you like to add: ')
            #add an item
            if (new_u_in == 'i'):
                name = input('\n\tWhat is the name of the item you would like to add: ')
                ans = input('\n\tDo you want to add a Description? (y or n): ')
                while (not(ans == 'y' or ans =='n')):
                    ans = input('\n\tPlease input a valid answer (y or n): ')
                if (ans == 'y'):
                    desc = input('\n\tWhat is the description of the item: ')
                else:
                    desc = None
                ans = input('\n\tDo you want to add a Cost of the item? (y or n): ')
                while (not(ans == 'y' or ans =='n')):
                    ans = input('\n\tPlease input a valid answer (y or n): ')
                if (ans == 'y'):
                    cost = input('\n\tWhat is the cost of the item: ')
                else:
                    cost = None

                c.execute('''
                        INSERT INTO Item (i_name, i_desc, i_cost)
                        VALUES ('%s', '%s', '%s')
                        '''%(name, desc, cost))
                
            #add a pokemon
            elif(new_u_in == 'p'):
                name = input('\n\tWhat is the name of the Pokemon you would like to add: ')
                p_id = input('\n\tWhat is the ID of the pokemon: ')
                p_type = input('\n\tWhat type of the pokemon: ')
                ans = input('\n\tDo you want to add a second type? (y or n): ')
                while (not(ans == 'y' or ans =='n')):
                    ans = input('\n\tPlease input a valid answer (y or n): ')
                if (ans == 'y'):
                    p_type2 = input('\n\tWhat is the secondary type of the pokemon: ')
                else:
                    p_type2 = None
                ans = input('\n\tDo you want to add the stats of the pokemon? (y or n): ')
                while (not(ans == 'y' or ans =='n')):
                    ans = input('\n\tPlease input a valid answer (y or n): ')
                if (ans == 'y'):
                    hp = input('\n\tWhat is the hp of the pokemon: ')
                    sat = input('\n\tWhat is the sp Attack of the pokemon: ')
                    at = input('\n\tWhat is the Attack of the pokemon: ')
                    sad = input('\n\tWhat is the sp Defense of the pokemon: ')
                    de = input('\n\tWhat is the Defense of the pokemon: ')
                else:
                    hp = None
                    sat = None
                    at = None
                    sad = None
                    de = None
                ans = input('\n\tDo you want to add a region to the pokemon? (y or n) ')
                while (not(ans == 'y' or ans =='n')):
                    ans = input('\n\tPlease input a valid answer (y or n): ')
                if (ans == 'y'):
                    region = input('\n\tWhat is the region of the pokemon: ')
                else:
                    region = None  
                c.execute('''
                        INSERT INTO Pokemon (id, p_Name, p_type, p_type2, hp, sp_attack, attack, defense, sp_defense, region)
                        VALUES ('%s', '%s', '%s','%s','%s','%s','%s','%s','%s','%s')
                        '''%(p_id, name, p_type, p_type2, hp, sat, at, de, sad, region))
            #add a move
            elif(new_u_in == 'm'):
                name = input('\n\tWhat is the name of the move you would like to add: ')
                m_type = input('\n\tWhat type is the move: ')
                ans = input('\n\tDo you want to add a Description? (y or n): ')
                while (not(ans == 'y' or ans =='n')):
                    ans = input('\n\tPlease input a valid answer (y or n): ')
                if (ans == 'y'):
                    desc = input('\n\tWhat is the description of the move: ')
                else:
                    desc = None

                ans = input('\n\tDo you want to add an accuracy stat? (y or n): ')
                while (not(ans == 'y' or ans =='n')):
                    ans = input('\n\tPlease input a valid answer (y or n): ')
                if (ans == 'y'):
                    acc = input('\n\tWhat is the accuracy of the move: ')
                else:
                    acc = None
                
                ans = input('\n\tDo you want to add a PP stat? (y or n): ')
                while (not(ans == 'y' or ans =='n')):
                    ans = input('\n\tPlease input a valid answer (y or n): ')
                if (ans == 'y'):
                    pp = input('\n\tWhat is the PP of the move: ')
                else:
                    pp = None

                    ans = input('\n\tDo you want to add an power stat? (y or n): ')
                while (not(ans == 'y' or ans =='n')):
                    ans = input('\n\tPlease input a valid answer (y or n): ')
                if (ans == 'y'):
                    pwr = input('\n\tWhat is the power of the move: ')
                else:
                    pwr = None

                c.execute('''
                        INSERT INTO Move (m_name, m_type, m_desc, m_acc, m_pp, m_power)
                        VALUES ('%s', '%s', '%s','%s','%s','%s')
                        '''%(name, m_type, desc, acc, pp, pwr))
            else:
                print('\n\tNot a valid selection exiting...')
        except:
            print("ERROR: Unable to perfrom addition")

    elif(u_in == 'i'):
        try:
            # add an item to a pokemon
            name = input('\n\tWhat is the id or name of the pokemon you want to add the item to: ')
            i_name = input('\n\tWhat name of the item you want to add to the pokemon: ')
            while(not has_value(c, 'Item', 'i_name', i_name)):
                i_name = input('\n\tPlease input a valid item name (type "help" to see a lits of name): ')
                if(i_name == 'help'):
                    c.execute('''
                        SELECT i_name FROM Item
                        ''')
                    print(c.fetchall())

            if has_value(c, 'Pokemon', 'p_name', name):
                c.execute('''
                    UPDATE Pokemon
                    SET i_name = '%s'
                    where p_name = %s
                    '''%(i_name, name))
            elif has_value(c, 'Pokemon', 'id', name):
                c.execute('''
                    UPDATE Pokemon
                    SET i_name = '%s'
                    where id = %s
                    '''%(i_name, name))
            else:
                print('%s is not a valid Pokemon name or Pokemon ID'%(name))
#probably still needs to validate that the name of the move is a valid move
            
        except:
            print("\n\tError: Unable to add move to list")
    #print the moves of a pokemon
    elif(u_in == 'e'):
        try:
            name = input('\n\tWhat is the pokemon name or pokemon ID that you would like to print: ')
            if has_value(c, 'Pokemon', 'p_name', name):
                c.execute('''
                        SELECT * FROM Pokemon WHERE p_name = '%s'
                        '''%(name))
                print(c.fetchall())
            elif has_value(c, 'Pokemon', 'id', name):
                c.execute('''
                        SELECT * FROM Pokemon WHERE id = '%s'
                        '''%(name))
                print(c.fetchall())
            else:
                print('%s is not a valid Pokemon name or Pokemon ID'%(name))
        except:
            print('\n\tERROR: Could not print pokemon stats')

    elif(u_in == 'm'):
            # add move to pokemon
            name = input('\n\tWhat is the id or name of the pokemon you want to add: ')
            m_name = input('\n\tWhat name of the move you want to add to the pokemon: ')
#probably still needs to validate that the name of the move is a valid move

            while(not has_value(c, 'Move', 'm_name', m_name)):
                m_name = input('\n\tPlease input a valid move name (type "help" to see a lits of name): ')
                if(m_name == 'help'):
                    c.execute('''
                        SELECT m_name FROM Move
                        ''')
                    print(c.fetchall())
            m_slot = input('\n\tWhat move slot do you want to add the move to (1-4): ')
            while(int(m_slot) < 1 or int(m_slot) > 4):
                m_slot = input('\n\tPlease input a valid team slot (1-4): ')

            if has_value(c, 'Pokemon', 'p_name', name):
                c.execute('''
                    UPDATE Pokemon
                    SET %s = '%s'
                    where p_name = %s
                    '''%('m'+m_slot, m_name, name))
            elif has_value(c, 'Pokemon', 'id', name):
                c.execute('''
                    UPDATE Pokemon
                    SET %s = '%s'
                    where id = %s
                    '''%('m'+m_slot, m_name, name))
            else:
                print('%s is not a valid Pokemon name or Pokemon ID'%(name))
    
    elif(u_in == 'u'):
        try:
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
        except: 
            print("\n\n\tError: Unable to add user")

    elif(u_in == 'p'):
        try:
            # adds the pokemon to the users team, still need to figure out how to input which pokemon they are adding 
            u_select = input('\n\tWhat user do you want to add the pokemon to: ')
            p_slot = input('\n\tWhat team slot do you want to add the pokemon to (1-6): ')
            while(int(p_slot) < 1 or int(p_slot) > 6):
                p_slot = input('\n\tPlease input a valid team slot (1-6): ')

            name = input('\n\tWhat is the name or ID of the pokemon you want to add: ')
        
 #currently it just accepts an name of the pokemon idealy we would allow this to accept any name that is in the list of pokemon,
 # can probably accomplish this by something similar to how we validate if a user is already in the list
            
            if has_value(c, 'Pokemon', 'p_name', name):
                c.execute('''
                    UPDATE User
                    Set %s = '%s'
                    WHERE user_id = '%s'
                    '''%('p'+p_slot, name, u_select))
            elif has_value(c, 'Pokemon', 'id', name):
                c.execute('''
                    UPDATE User
                    Set %s = (SELECT p_name FROM Pokemon WHERE id = '%s')
                    WHERE user_id = '%s'
                    '''%('p'+p_slot, name, u_select))
            else:
                print('%s is not a valid Pokemon name or Pokemon ID'%(name))
        except: 
            print('\n\tError: Unable to add pokemon to team')
        
    else: 
        print('\n\n\tPlease enter a valid input')
        
    conn.commit()



#something i saw online might be usefull for when we have to make a lot of insert statments
#     insert_stmt = ("INSERT INTO Checks (bookID, Username) "  # note the space at end of string
#                   "SELECT ?, ? "
#                   "WHERE NOT EXISTS (SELECT 1 FROM Checks WHERE bookID = ? and Username = ?)")
# checkCur.execute(insert_stmt, (bookid, uname) * 2)  # no need to repeat the bookid, uname combo twice; just multiply the tuple by 2