# Data Visualisation with Python and JavaScript.

## Installing Dependencies

This visualization was inspired by the book Data Visualization with Python and JavaScript, but the work is my own.
The dependencies can be installed via the following command:

```sh
$ pip install -r requirements.txt
```

In order to seed the database with the Nobel-prize winners dataset, use run.py:

```sh
$ python run.py seed_db
```

## Viewing the visualization.

You can run the Nobel-viz in two ways, one using static-files to emulate an API which can be run without MongoDB and the other using the EVE RESTful API with the Nobel winners dataset seeded by using `run.py`.  

#### Running it statically
To run the Nobel-viz statically just run Python's `SimpleHTTPServer` server from the `nobel_viz` directory:

```sh
nobel_viz $ python -m SimpleHTTPServer 
```
This is the easiest method, and allows the complete interactive visualization.
If you go to the `http:localhost:8000` URL with your web-browser of choice, you should see the Noble-viz running.

#### Running it dynamically with the EVE-API
To run the Nobel-viz using the EVE RESTful API, first start the EVE server by running it from the `nobel_viz/api` subdirectory:

```sh
nobel_viz/api $ python server_eve.py         
```
With the API's server running on default port 5000, start the Nobel-viz's Flask server from the `nobel_viz` directory:

```sh
nobel_viz $ python nobel_viz.py     
```
If you go to the `http:localhost:8000` URL with your web-browser of choice, you should see the Noble-viz running.
