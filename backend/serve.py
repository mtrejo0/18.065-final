from flask import Flask, jsonify, request
from flask_cors import CORS
import random
import os  

app = Flask(__name__)
CORS(app)

@app.route('/')
def main():

    response = {
        "message": "Whos that pokemon works!"
    }
    return jsonify(response)


@app.route('/stats', methods = ['GET', 'POST'])
def get_stats():
    try:
        if request.method == 'POST':
            f = request.files['file']
            f.save(f.filename)
            os.rename(f.filename,'pokemon.png')
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