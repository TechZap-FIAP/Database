import json

from connection import connect_bank, return_credentials


login, pswd = return_credentials()
connection = connect_bank(login, pswd)
cursor = connection.cursor()

query = """
SELECT JSON_ARRAYAGG(
           JSON_OBJECT(
               'id_user' VALUE id_user,
               'ds_user_name' VALUE ds_user_name,
               'ds_surname' VALUE ds_surname,
               'ds_email' VALUE ds_email
           )
       ) AS json_data
FROM T_TZ_USER
"""

cursor.execute(query)

result = cursor.fetchone()

if result and result[0]:
    with open("C:\\Users\\adria\\OneDrive\\Área de Trabalho\\Dataset\\users.json", "w", encoding="utf-8") as json_file:
        json_file.write(result[0])
    print("Arquivo JSON exportado com sucesso!")
else:
    print("Nenhum dado encontrado para exportar.")

cursor.close()
connection.close()