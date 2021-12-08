#import MySQLdb
#import mysql.connector as mysql

import sqlite3
from sqlite3 import OperationalError

conn = sqlite3.connect('pokedex_db.sqlite')
c = conn.cursor()

# def insert():
#     client = MySQLdb.connect(host="", port=, user="", passwd="",db="pokedex")



# db = mysql.connect(
#     host = "localhost",
#     user = "root", 
#     passwd = "dbms"
# )

# print(db)

fd = open('Project.sql','r')
sqlFile = fd.read().replace('\n',' ').replace('\t',' ')

fd.close()


sqlCommands = sqlFile.split(';')

for command in sqlCommands:
    try:
        c.execute(command)
    except OperationalError as msg:
        print("command skipped: ", msg)
conn.commit()
