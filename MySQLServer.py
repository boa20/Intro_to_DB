import mysql.connector

connection = mysql.connector.connect(
    user = "root",
    password = "Icui4cu@",
    host = "localhost"
)

mycursor = connection.cursor()

mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")



connection.close()