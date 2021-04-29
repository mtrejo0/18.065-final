import math
import numpy as np
import pandas as pd
import cv2
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import datasets, layers, models

# Load the TensorFlow models
# Returns list of models
def load_models():
    hp_model = keras.models.load_model('../models/hp')
    attack_model = keras.models.load_model('../models/attack')
    defense_model = keras.models.load_model('../models/defense')
    sp_attack_model = keras.models.load_model('../models/sp_attack')
    sp_defense_model = keras.models.load_model('../models/sp_defense')
    speed_model = keras.models.load_model('../models/speed')

    return [hp_model, attack_model, defense_model, sp_attack_model, sp_defense_model, speed_model]

# Run predictions for input image on models
# Returns list of predicted stats
def predict_stats( filepath, models ):
    # cv2.imread( filepath ) produces a 3D list 
    input_image = cv2.imread( filepath )
    input_image = cv2.resize( input_image, (32,32) )
    input_image = np.array( [input_image] )
    input_image = input_image / 255.0

    max_hp = 255
    max_attack = 185
    max_defense = 230
    max_sp_attack = 194
    max_sp_defense = 230
    max_speed = 160

    hp_stat = min(max_hp, round(max_hp*models[0].predict(input_image)[0][0]) )
    attack_stat = min(max_attack, round(max_attack*models[1].predict(input_image)[0][0]) )
    defense_stat = min(max_defense, round(max_defense*models[2].predict(input_image)[0][0]) )
    sp_attack_stat = min(max_sp_attack, round(max_sp_attack*models[3].predict(input_image)[0][0]) )
    sp_defense_stat = min(max_sp_defense, round(max_sp_defense*models[4].predict(input_image)[0][0]) )
    speed_stat = min(max_speed, round(max_speed*models[5].predict(input_image)[0][0]) )

    return [hp_stat, attack_stat, defense_stat, sp_attack_stat, sp_defense_stat, speed_stat]

# Euclidean distance helper function for finding most similar poke
def dist( p, q ):
    return math.sqrt(sum((px - qx) ** 2.0 for px, qx in zip(p, q)))

# Finds the pokemon with the smallest Euclidean distance between its stats and our predicted stats
# Returns string of pokemon name
def get_most_similar_poke( our_stats ):
    # Read csv file
    cols = ['pokedex_number', 'name', 'hp', 'attack', 'defense', 'sp_attack', 'sp_defense', 'speed', 'base_total', 'height_m', 'type1', 'type2', 'weight_kg', 'is_legendary']
    pokemon_stats = pd.read_csv(f"pokemon_stats.csv", header=0, names=cols, nrows = 721)

    smallest_dist = 100000
    smallest_dist_index = 0

    for index, row in pokemon_stats.iterrows():
        curr_stats = [row['hp'],row['attack'],row['defense'],row['sp_attack'],row['sp_defense'],row['speed']]
        curr_dist = dist(our_stats, curr_stats)

        if( curr_dist < smallest_dist ):
            smallest_dist = curr_dist
            smallest_dist_index = index
    
    similar_poke_row = pokemon_stats.iloc[smallest_dist_index]

    return similar_poke_row