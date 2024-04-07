# Overview
This is a set of example applications connecting a python application to a mysql db. This repo has all you need to setup the database and run the apps included.
The 3 applications share a single helper script, the util/db_connection.py script. It has a single function, fetch_pokemon, that will connect to that schema as the pokedex_project user, execute a single query, and return a list of dictionarys

Each application allows the user to interact in different ways
- command_line_poke_app.py
    - A simple command line application
    - Prompts the user for text instruction, and renders it back as text
    - Functional code with a simple repl loop
- gui_poke_app.py
    - A tkinter application
    - Gui application with 3 radio buttons and 2 text fields
    - Renders the query results as a table in the gui
    - Class based approach
- flask_poke_app.py
    - A Flask application
    - localhosted webpage with several routes
    - Links to different pages to handle the different query types/results
    - Probably more routing than necessary, but it's mostly to show the capabilities
    - I'm not consistent with inline HTML and HTML files

I'm not going to win any awards for UI/UX with this, but I'm a data engineer so I'm going for function over form.

# Installation Instructions

1. Connect to your mysql db as root or a user with admin privliges 
2. Execute the entirety of the setup/pokedex_project.sql script
3. Open a command prompt at the root of the repository
4. Execute the following command: pip install -r setup/requirements.txt

You should now have a pokedex_project schema, complete with pokemon, type, ability, species, and gender tables, as well as a local pokedex_project db user with password 'password' that has full privileges on all objects in that schema.
The gui and cli applications can simply be run as python scripts. The flask app can be started with the following command run at the root of the repository:
    python -m flask --app flask_poke_app run
