import cx_Oracle
import json

cx_Oracle.init_oracle_client(lib_dir=r"./instantclient-basic-windows.x64-21.12.0.0.0dbru/instantclient_21_12")

def return_credentials():
    path = r"./credentials.json"
    with open(path, "r") as archive:
        dados = json.load(archive)

    login = dados["user"]
    pswd = dados["password"]

    return login, pswd
def connect_bank(login, pswd, host="oracle.fiap.com.br", port=1521, sid="orcl"):
    dsn = cx_Oracle.makedsn(host=host, port=port, sid=sid)
    conn = cx_Oracle.connect(user=login, password=pswd, dsn=dsn)

    return conn
