import sqlite3
from sqlite3 import OperationalError

conn = sqlite3.connect('python_db/pokedex_db.sqlite')
c = conn.cursor()

fd = open('python_db/Project.sql','r')
sqlFile = fd.read().replace('\n',' ').replace('\t',' ')

fd.close()


sqlCommands = sqlFile.split(';')

for command in sqlCommands:
    try:
        c.execute(command)
    except OperationalError as msg:
        print("command skipped: ", msg)
conn.commit()
