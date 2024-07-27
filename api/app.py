from flask import Flask, request, jsonify
import mysql.connector
from mysql.connector import Error
import os

app = Flask(__name__)

def create_connection():
    connection = None
    try:
        connection = mysql.connector.connect(
            host=os.getenv("DB_HOST", "localhost"),
            user=os.getenv("DB_USER", "user"),
            password=os.getenv("DB_PASSWORD", "userpassword"),
            database=os.getenv("DB_NAME", "cars_db")
        )
    except Error as e:
        print(f"The error '{e}' occurred")
    return connection

@app.route('/cars', methods=['GET'])
def get_cars():
    connection = create_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM cars")
    result = cursor.fetchall()
    cursor.close()
    connection.close()
    return jsonify(result)

@app.route('/cars', methods=['POST'])
def add_car():
    new_car = request.json
    connection = create_connection()
    cursor = connection.cursor()
    query = "INSERT INTO cars (make, model, year) VALUES (%s, %s, %s)"
    cursor.execute(query, (new_car['make'], new_car['model'], new_car['year']))
    connection.commit()
    cursor.close()
    connection.close()
    return jsonify({"message": "Car added successfully!"}), 201

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
