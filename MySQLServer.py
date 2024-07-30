import mysql.connector

connection = mysql.connector.connect(
    user = "root",
    password = "Icui4cu@",
    host = "localhost"
)

mycursor = connection.cursor()

mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

print("Database 'alx_book_store' created successfully!")

mycursor.close()
connection.close()



connection.close()