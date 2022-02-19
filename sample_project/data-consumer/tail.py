import psycopg2

dsn = "postgresql://materialize@localhost:6875/materialize?sslmode=disable"
conn = psycopg2.connect(dsn)

with conn.cursor() as cur:
    cur.execute("DECLARE c CURSOR FOR TAIL (SELECT * FROM fct_inventory)")
    while True:
        cur.execute("FETCH ALL c")
        for row in cur:
            print(row)
