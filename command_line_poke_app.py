from util.db_connection import fetch_pokemon

def print_rows(name='Name', type1='Type 1', type2='Type 2'):
    """
    Builds a table row representation of the passed in pokemon dictionaries.
    If default args are used, it builds a header row.
    Built around the original 151, which have a max name length of 10.
    Pokemon added with longer names may run into issues
    """
    print(f"\033[4m{name:<12}| {type1:<10}| {type2:<10}\033[0m")


def print_pokemon(type1:str = None, type2:str = None):
    """
    Uses util.db_connection.fetch_pokemon to query the db for pokemon
    It then builds a tablular representation of the results.
    If no pokemon are returned from the query, a clarifiying message is returned.
    """
    pokemon  = fetch_pokemon(type1, type2)
    if len(pokemon) == 0:
        print(f'No Pokemon found with the type {type1 if type2 is None else type1 + "/" + type2}')
        return
    
    print_rows()
    for poke in pokemon:
        print_rows(
            name=poke['name'],
            type1=poke['type1'],
            type2=poke['type2']
        )


def main_menu():
    """Displays the 4 menu options and returns user choice"""
    print('Which types do you want to see?')
    print('1: All')
    print('2: Primary Type')
    print('3: Primary and Secondary Types')
    print('')
    print('Enter q to quit')
    print()
    return input().lower()


def main():
    """
    This is the basic CLI script that students have worked on before.
    It displays the menu options, attempts to gracefully handle user input,
    then displays the results of the choices.
    """
    print('Welcome to the pokedex')
    prompt =  main_menu()
    while prompt != 'q':
        type1 = type2 = None
        if len(prompt) > 1 or prompt not in '123':
            print('Invalid entry')
        else:
            if prompt in '23':
                type1 = input('Enter a pokemon type: ')
                if prompt == '3':
                    type2 = input('Enter a second pokemon type: ')
            print()
            print_pokemon(type1, type2)
        print()
        prompt =  main_menu()


if __name__ == "__main__":
    main()