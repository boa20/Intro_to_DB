import mysql.connector

try:
    connection = mysql.connector.connect(
        user = "root",
        password = "Icui4cu@",
        host = "localhost"
    )

    mycursor = connection.cursor()

    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print("Failed to connect to database")


mycursor.close()
connection.close()