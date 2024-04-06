# python -m flask --app flask_poke_app run

from flask import Flask, request, render_template
import mysql.connector

app = Flask(__name__)


@app.route('/')
def hello():
    print(request.args)
    if request.args.get('acct_id') is None:
        return '<h1>Welcome, please login</h1>'
    else:
        return f"""
        <h1>Welcome {request.args.get('acct_name')}</h1>
        <br />
        <br />
        <h2>Menu</h2>
        <ul>
            <li><a href='/banking?acct_id={request.args.get('acct_id')}'>Banking</a></li>
            <li><a href='/mgmt?acct_id={request.args.get('acct_id')}'>Account Managment</a></li>
        </ul>
        """


@app.route('/mgmt')
def mgmt():
    return '<h1>This is the account managment page</h1>'

@app.route('/banking')
def banking():
    return render_template('banking.html', name=None)

@app.route('/banking/<name>')
def banking_user(name=None):
    return render_template('banking.html', name=name)


@app.route('/pokemon')
def fetch_pokemon():
    pokemon_table = """
        <table>
            <tr>
                <th>Dex Number</th>
                <th>Pokemon</th>
            </tr>
    """
    connection = mysql.connector.connect(
        user = 'python_connection', 
        database = 'pokedex_project', 
        password = 'password'
    )
    cursor = connection.cursor()
    testQuery = ("SELECT * FROM pokemon")
    cursor.execute(testQuery)
    for item in cursor:
        pokemon_table += f"""
            <tr>
                <td>{item[0]}</td>
                <td>{item[1]}</td>
            </tr>
        """
    cursor.close()
    connection.close()
    pokemon_table += "</table>"
    return pokemon_table
