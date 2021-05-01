from flask import Flask, jsonify, request, send_file
from flask_cors import CORS
from api import *
import os  

app = Flask(__name__, static_url_path='/static')
CORS(app)


model_list = load_models()

@app.route('/')
def main():

    response = {
        "message": "Who's that pokemon works!"
    }
    return jsonify(response)


@app.route('/stats', methods = ['GET', 'POST'])
def get_stats():
    try:
        f = request.files['file']
        f.save(f.filename)
        os.replace(f.filename,'pokemon.png')
        
        predicted_stats = predict_stats( 'pokemon.png', model_list )
        
        stats = [
            {'name': 'hp', 'value': str(predicted_stats[0])},
            {'name': 'attack', 'value': str(predicted_stats[1])},
            {'name': 'defense', 'value': str(predicted_stats[2])},
            {'name': 'sp_attack', 'value': str(predicted_stats[3])},
            {'name': 'sp_defense', 'value': str(predicted_stats[4])},
            {'name': 'speed', 'value': str(predicted_stats[5])}
        ]

        similar_poke = get_most_similar_poke(predicted_stats)
        similar_poke_name = similar_poke['name']
        similar_poke_stats = [
            {'name': 'hp', 'value': str(similar_poke['hp'])},
            {'name': 'attack', 'value': str(similar_poke['attack'])},
            {'name': 'defense', 'value': str(similar_poke['defense'])},
            {'name': 'sp_attack', 'value': str(similar_poke['sp_attack'])},
            {'name': 'sp_defense', 'value': str(similar_poke['sp_defense'])},
            {'name': 'speed', 'value': str(similar_poke['speed'])}
        ]

        similar_poke_image_path = 'static/' + str(similar_poke['pokedex_number']) + '.png'
        print(similar_poke_image_path)
        
        response = {
            "message": "Your stats",
            "stats": stats,
            "most_similar": str(similar_poke_name),
            "most_similar_stats": similar_poke_stats,
            "most_similar_image_path": similar_poke_image_path
        }
        print(response)
        return jsonify(response)
    except Exception as e:
        return jsonify({"error": e}), 400

    
if __name__ == "__main__":
    app.run(debug=True)
