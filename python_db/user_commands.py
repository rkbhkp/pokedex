import sqlite3
import pandas

conn = sqlite3.connect('python_db/pokedex_db.sqlite')
c = conn.cursor()

c.execute('''
        UPDATE Pokemon
        SET m2 = 'Acid'
        where id = 1
        ''')
conn.commit()