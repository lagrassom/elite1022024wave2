# A lot of this was based on the tk docs
# https://tkdocs.com/tutorial/firstexample.html
# It may look like the table is incomplete, but it scrolls

from tkinter import *
from tkinter import ttk
from util.db_connection import fetch_pokemon


def make_none(arg):
    """Converts empty string to None to be compliant with the fetch_pokemon function"""
    return None if len(arg) == 0 else arg


class PokedexTk:

    def __init__(self, root):
        # Constants for Radio Buttons
        self.CHOICE_ALL = 1
        self.CHOICE_ALL_TEXT = 'All'
        self.CHOICE_PRIMARY = 2
        self.CHOICE_PRIMARY_TEXT = 'Primary Type'
        self.CHOICE_P_AND_S = 3
        self.CHOICE_P_AND_S_TEXT = 'Primary\nand\nSecondary Type'

        root.title("Pokedex Search")

        # Initial grid setup
        mainframe = ttk.Frame(root, padding="3 3 12 12")
        mainframe.grid(column=0, row=0, sticky=(N, W, E, S))
        root.columnconfigure(0, weight=1)
        root.rowconfigure(0, weight=1)

        ########### Column 1 ###########
        # Radio Button options
        # This variable holds the value of the radio button option. 
        # Setting it to self.CHOICE_ALL will start the app with that button selected
        self.query_choice = IntVar(value=self.CHOICE_ALL) 

        # Command allows for a function to fire whenever the button is clicked
        # In this case, the radio buttons will toggle which of the text fields are enabled
        # I'm using constants for these values so the disable_and_clear_entry function is consistent with what is used here
        radio_all = ttk.Radiobutton(mainframe, text=self.CHOICE_ALL_TEXT, variable=self.query_choice, value=self.CHOICE_ALL, command=self.disable_and_clear_entry)
        radio_all.grid(column=1, row=1, sticky=(W,E))
        radio_primary = ttk.Radiobutton(mainframe, text=self.CHOICE_PRIMARY_TEXT, variable=self.query_choice, value=self.CHOICE_PRIMARY, command=self.disable_and_clear_entry)
        radio_primary.grid(column=1, row=2, sticky=(W,E))
        radio_p_and_s = ttk.Radiobutton(mainframe, text=self.CHOICE_P_AND_S_TEXT, variable=self.query_choice, value=self.CHOICE_P_AND_S, command=self.disable_and_clear_entry)
        radio_p_and_s.grid(column=1, row=3, sticky=(W,E))
        ########### End Column 1 ###########


        ########### Column 2 ###########
        # Pokemon Type paramters and labels
        # Using the text variables to capture the input and pass to the database query
        # Starting the fields disabled, as they aren't used in the default option at startup
        # They are enabled in the disable_and_clear_entry function when selecting a radio button
        self.primary_type = StringVar()
        ttk.Label(mainframe, text='Primary Type').grid(column=2, row=2)
        self.primary_type_entry = ttk.Entry(mainframe, width=12, textvariable=self.primary_type, state='disabled')
        self.primary_type_entry.grid(column=3,row=2, sticky=(W,E))

        self.secondary_type = StringVar()
        ttk.Label(mainframe, text='Secondary Type').grid(column=2, row=3)
        self.secondary_type_entry = ttk.Entry(mainframe, width=12, textvariable=self.secondary_type, state='disabled')
        self.secondary_type_entry.grid(column=3,row=3, sticky=(W,E))

        # Submit button
        # Calls the peform_query function when clicked
        ttk.Button(mainframe, text="Submit", command=self.perform_query).grid(column=2, row=4, sticky=W)
        ########### End Column 2 ###########

        # Pokedex result table and error message variable
        # Pokedex table is set to mirror the result of util.db_conn.fetch_pokemon
        self.pokedex = ttk.Treeview(mainframe, columns=('name', 'type1', 'type2'))
        self.pokes_not_found_text = StringVar()
        self.pokes_not_found = ttk.Label(mainframe, textvariable=self.pokes_not_found_text)

        # Define column properties
        # This #0 column is built in to the Treeview class. Width 0 effective hides it
        self.pokedex.column("#0", width=0, stretch=NO) 
        self.pokedex.column("name", anchor=CENTER, width=80)
        self.pokedex.column("type1", anchor=CENTER, width=80)
        self.pokedex.column("type2", anchor=CENTER, width=80)

        # Set column headings
        # This #0 column is built in to the Treeview class. text="" effective hides it
        self.pokedex.heading("#0", text="", anchor=CENTER)
        self.pokedex.heading("name", text="Name", anchor=CENTER)
        self.pokedex.heading("type1", text="Type 1", anchor=CENTER)
        self.pokedex.heading("type2", text="Type 2", anchor=CENTER)


        # Display the items, hide the pokedex
        for child in mainframe.winfo_children(): 
            child.grid_configure(padx=5, pady=5)
        self.pokedex.grid_forget()

        # Bind the enter key to the same function as the submit button
        root.bind("<Return>", self.perform_query)


    def disable_and_clear_entry(self):
        """Toggles and clears the text entry fields based on the radio button choice"""
        # Primary type is needed for CHOICE_PRIMARY and CHOICE_P_AND_S, disable it for CHOICE_ALL
        self.primary_type_entry.state(['disabled' if self.query_choice.get() == self.CHOICE_ALL else '!disabled'])
        if self.primary_type_entry.instate(['disabled']):
            self.primary_type.set('')
        # Secondary type is needed for CHOICE_P_AND_S, disable it for CHOICE_ALL and CHOICE_PRIMARY  
        self.secondary_type_entry.state(['!disabled' if self.query_choice.get() == self.CHOICE_P_AND_S else 'disabled'])
        if self.secondary_type_entry.instate(['disabled']):
            self.secondary_type.set('')


        

    def perform_query(self, *args):
        """
        Queries the table, using the values in the text fields as the query parameters
        Clears and populates the pokedex table with the results from the query
        Displays a message if no pokemon are found
        """
        try:
            # Sanitize text inputs and query the db
            type1 = make_none(self.primary_type.get())
            type2 = make_none(self.secondary_type.get())
            pokemon = fetch_pokemon(type1, type2)
            self.pokes_not_found_text.set(f'No Pokemon found with the type {type1 if type2 is None else type1 + "/" + type2}')
            
            #clear existing table
            for row in self.pokedex.get_children():
                self.pokedex.delete(row)

            # Insert data
            for poke in pokemon:
                # These trees can nest inside of other rows. parent='' uses the root as the parent
                # index='end' means append to the end of the table
                # text is hover text for the row
                self.pokedex.insert(parent='', index='end', text='', values=(poke['name'], poke['type1'], poke['type2']))

            # Display either the table or the not found message
            if len(pokemon):
                self.pokedex.grid(column=1, row=5, columnspan=3)
                self.pokes_not_found.grid_forget()
            else:
                self.pokedex.grid_forget()
                self.pokes_not_found.grid(column=1, row=5, columnspan=3)

        except Exception as e:
            print(e)


if __name__ == "__main__":
    root = Tk()
    PokedexTk(root)
    root.mainloop()