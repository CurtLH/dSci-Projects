import psycopg2
import pandas as pd
from sqlalchemy import create_engine
from bokeh.plotting import figure, output_file, show

# connect to the database
conn = psycopg2.connect(database="postgres",
                                user="postgres",
                                password="apassword",
                                host="localhost")

conn.autocommit = True
cur = conn.cursor()
engine = create_engine('postgresql://postgres:apassword@localhost:5432/postgres')

# read in SQL query
fd = open('query.sql', 'r')
sql = fd.read()
fd.close()

# run SQL query
df = pd.read_sql_query(sql, engine, index_col='datetime')

# create bokeh plot
output_file("temps.html")
p1 = figure(x_axis_type='datetime', title='Apartment Temperatures')
p1.grid.grid_line_alpha=0.3
p1.xaxis.axis_label = 'Date'
p1.yaxis.axis_label = 'Temperature'
p1.line(df.index, df.inside, color='#A6CEE3', legend='Inside', line_width=4)
p1.line(df.index, df.outside, color='#B2DF8A', legend='Outside', line_width=4)
show(p1)
