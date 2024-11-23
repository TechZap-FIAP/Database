from connection import connect_bank, return_credentials
def banco_dados():
    login, pswd = return_credentials()
    conn = connect_bank(login, pswd)
    print("Conectado com o Banco com Sucesso!")

    try:
        cursor = conn.cursor()

        campos = ['ID do usuário', 'Nome', 'Sobrenome', 'E-mail', 'Senha']

        dados_usuario = []

        for campo in campos:
            dado = input(f"Digite o {campo}: ")
            dados_usuario.append(dado)

        dados_usuario[0] = int(dados_usuario[0])

        cursor.callproc('INSERT_T_TZ_USER', dados_usuario)
        print("Procedure INSERT_T_TZ_USER chamada com sucesso!\n")

    except Exception as e:
        print(f"Ocorreu um erro: {e}")
    finally:
        cursor.close()
        conn.close()
        print("Conexão com o banco de dados fechada com sucesso!")

banco_dados()
