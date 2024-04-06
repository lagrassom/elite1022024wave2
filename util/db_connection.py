import mysql.connector


ALL_POKES_QUERY = """
    SELECT name, type1, type2
    FROM pokedex_project.pokemon as poke
        INNER JOIN pokedex_project.type as types
            ON poke.type_id = types.type_id
    ORDER BY poke.id"""
PRIMARY_TYPE_QUERY = """
    SELECT name, type1, type2
    FROM pokedex_project.pokemon as poke
        INNER JOIN pokedex_project.type as types
            ON poke.type_id = types.type_id
    WHERE lower(type1) = lower(%s)
    ORDER BY poke.id"""
PRIMARY_SECONDARY_TYPE_QUERY = """
    SELECT name, type1, type2
    FROM pokedex_project.pokemon as poke
        INNER JOIN pokedex_project.type as types
            ON poke.type_id = types.type_id
    WHERE lower(type1) = lower(%s) and lower(type2) = lower(%s)
    ORDER BY poke.id"""

def fetch_pokemon(type1:str = None, type2:str = None) -> list:
    """
    Runs a query agains the pokedex_project schema that returns a list of dictionaries
    containing the name, type1, and type2 of all applicable pokemon. 
    If None is passed for both types, it will return all pokemon.
    If only 1 type is provided, it will use return all pokemon matching that type1.
    If both types are provided, it will only return pokemon with matching type1 and type2.
    If no pokemon match, it returns an empty list.
    """
    pokemon = []
    connection = mysql.connector.connect(
        user = 'pokedex_project', 
        database = 'pokedex_project', 
        password = 'password'
    )

    cursor = connection.cursor()
    
    
    if type1 is not None or type2 is not None:
        if type1 is None:
            type1 = type2
            type2 = None
        if type2 is None:
            cursor.execute(PRIMARY_TYPE_QUERY, [type1])
        else:
            cursor.execute(PRIMARY_SECONDARY_TYPE_QUERY, [type1, type2])
    else:
        cursor.execute(ALL_POKES_QUERY)

    for row in cursor:
        pokemon.append({
            'name': row[0],
            'type1': row[1],
            'type2': row[2]
        })

    cursor.close()
    connection.close()
    
    return pokemon
