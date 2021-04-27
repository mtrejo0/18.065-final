from flask import Flask, jsonify
from flask_cors import CORS
import random

app = Flask(__name__)
CORS(app)

@app.route('/')
def main():

    response = {
        "message": "Whos that pokemon works!"
    }
    return jsonify(response)

@app.route('/stats')
def get_stats():
    try:
        stats = [
            {'name': 'attack', 'value': random.randint(0,100)},
            {'name': 'defense', 'value': random.randint(0,100)}
        ]
        response = {
            "message": "Your stats",
            "stats": stats,
        }
        return jsonify(response)
    except Exception as e:
        return jsonify({"error": e}), 400


if __name__ == "__main__":
    app.run(debug=True)