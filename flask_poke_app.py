# python -m flask --app flask_poke_app run

from flask import Flask, request, render_template
from util.db_connection import fetch_pokemon
import mysql.connector

app = Flask(__name__)


@app.route('/')
def hello():
    return render_template('index.html')


@app.route('/pokemon')
def pokedex():
    return render_template('pokedex.html')


@app.route('/pokemon/<type1>/<type2>')
def pokedex_search(type1, type2):
    if type1 == 'null':
        type1 = None 
    if type2 == 'null':
        type2 = None
    pokemon = fetch_pokemon(type1, type2)
    return render_template('pokedex.html', table=pokemon)
