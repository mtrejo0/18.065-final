from flask import Flask, jsonify, request
from flask_cors import CORS
from api import *
import os  

app = Flask(__name__)
CORS(app)


model_list = load_models()

@app.route('/')
def main():

    response = {
        "message": "Whos that pokemon works!"
    }
    return jsonify(response)


@app.route('/stats', methods = ['GET', 'POST'])
def get_stats():
    try:
        f = request.files['file']
        f.save(f.filename)
        os.rename(f.filename,'pokemon.png')
        
        predicted_stats = predict_stats( 'pokemon.png', model_list )
        
        stats = [
            {'name': 'hp', 'value': str(predicted_stats[0])},
            {'name': 'attack', 'value': str(predicted_stats[1])},
            {'name': 'defense', 'value': str(predicted_stats[2])},
            {'name': 'sp_attack', 'value': str(predicted_stats[3])},
            {'name': 'sp_defense', 'value': str(predicted_stats[4])},
            {'name': 'speed', 'value': str(predicted_stats[5])}
        ]
        
        print(stats)
        similar_poke_name = get_most_similar_poke(predicted_stats)
        print(similar_poke_name)
        
        response = {
            "message": "Your stats",
            "stats": stats,
            "most_similar": str(similar_poke_name)
        }
        return jsonify(response)
    except Exception as e:
        return jsonify({"error": e}), 400

    
if __name__ == "__main__":
    app.run(debug=True)
