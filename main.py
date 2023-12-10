# Autores BSI 022
# Adriano da Silva de Carvalho 13692400
# Beatriz Vieira da Silva Andrade 13692362
# Gabriel Moraes Andreghetti 13692355
# Gabriel Vasconcelos de Arruda 12676192
# Gabriel Carvalho Fernandes 13696662


import oracledb
import os

# Conexão com o banco
def get_db_connection():
    username = os.environ.get('DBUSER')
    password = os.environ.get('DBPASSWORD')
    dsn = os.environ.get('DB_DSN')
    return oracledb.connect(user=username, password=password, dsn=dsn)

def cadastrar_pessoa():
    nome = input("Digite o nome da pessoa: ")
    cpf = input("Digite o CPF da pessoa: ")
    data_nascimento = input("Digite a data de nascimento (DD/MM/AAAA): ")
    idade = input("Digite a idade da pessoa: ")
    biologo = input("É biólogo? (1 para sim, 0 para não): ")
    historiador = input("É historiador? (1 para sim, 0 para não): ")
    geologo = input("É geólogo? (1 para sim, 0 para não): ")

    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        query = "INSERT INTO Pessoa (CPF, Nome, Data_Nascimento, Idade, BBiologo, BHistoriador, BGeologo) VALUES (:cpf, :nome, TO_DATE(:data_nascimento, 'DD/MM/YYYY'), :idade, :biologo, :historiador, :geologo)"
        cursor.execute(query, cpf=cpf, nome=nome, data_nascimento=data_nascimento, idade=idade, biologo=biologo, historiador=historiador, geologo=geologo)
        conn.commit()
        print("Pessoa cadastrada com sucesso!")
    except oracledb.DatabaseError as e:
        print(f"Erro ao cadastrar pessoa: {e}")
        # Caso dê problema, rollback
        conn.rollback()
    finally:
        cursor.close()
        conn.close()

def consultar_viagens():
    print("Opções de Filtro:")
    print("1. Sem filtro")
    print("2. Filtrar por nome")
    print("3. Filtrar por data")
    opcao_filtro = input("Escolha uma opção de filtro: ")

    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        if opcao_filtro == '1':
            cursor.execute("SELECT Nome,TO_DATE(TO_CHAR(data_viagem, 'DD/MM/YYYY'), 'DD/MM/YYYY') as data_viagem FROM Viagem")
        elif opcao_filtro == '2':
            nome = input("Digite o nome da viagem: ")
            cursor.execute("SELECT Nome, TO_DATE(TO_CHAR(data_viagem, 'DD/MM/YYYY'), 'DD/MM/YYYY') as data_viagem FROM Viagem WHERE Nome LIKE :nome", nome=f'%{nome}%')
        elif opcao_filtro == '3':
            data_viagem = input("Digite a data da viagem (DD/MM/YYYY): ")
            cursor.execute("SELECT Nome, TO_DATE(TO_CHAR(data_viagem, 'DD/MM/YYYY'), 'DD/MM/YYYY') as data_viagem FROM Viagem WHERE TO_CHAR(Data_Viagem, 'DD/MM/YYYY') = :data_viagem", data_viagem=data_viagem)
        else:
            print("Opção de filtro inválida. Exibindo todas as viagens.")
            cursor.execute("SELECT Nome, TO_DATE(TO_CHAR(data_viagem, 'DD/MM/YYYY'), 'DD/MM/YYYY') as data_viagem FROM Viagem")

        for nome, data in cursor:
            print(f"Nome: {nome}, Data: {data.strftime('%d/%m/%Y')}")

    except oracledb.DatabaseError as e:
        print(f"Erro ao consultar viagens: {e}")
    finally:
        cursor.close()
        conn.close()

def main():
    # Interface Usuário
    while True:
        print("1. Cadastrar Pessoa")
        print("2. Consultar Viagens")
        print("3. Sair")
        opcao = input("Escolha uma opção: ")

        if opcao == '1':
            cadastrar_pessoa()
        elif opcao == '2':
            consultar_viagens()
        elif opcao == '3':
            break
        else:
            print("Opção inválida!")

if __name__ == "__main__":
    # Inicia programa
    main()