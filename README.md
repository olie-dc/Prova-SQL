# Projeto Bookworms 

## 1 - Cenário

Com o avanço da tecnologia, surgiram os clubes de leitura online, onde pessoas de diferentes lugares podem se reunir virtualmente para discutir livros. Os membros se cadastram na plataforma e podem participar de vários clubes de leitura, cada um com seu próprio tema e discussões. Eles podem sugerir novos livros para serem discutidos e comentar sobre os que já foram lidos. Além disso, podem interagir uns com os outros por meio de comentários e discussões. Esses clubes proporcionam uma maneira fácil e conveniente para os amantes da leitura compartilharem suas paixões, descobrirem novos livros e conectarem-se com pessoas que têm interesses similares. 

Os clubes de leitura desempenham um papel crucial na promoção da leitura e na construção de uma comunidade literária online. Eles oferecem um espaço seguro e acolhedor para os amantes da leitura se expressarem, trocarem ideias e expandirem seus horizontes literários. Além disso, os clubes de leitura incentivam a discussão crítica e analítica dos livros, ajudando os leitores a desenvolverem habilidades de pensamento crítico e a aprofundarem sua compreensão das obras literárias. 

## 2 - Modelagem Conceitual

<img src="https://github.com/olie-dc/Prova-SQL/blob/main/imagem/BookWorms(DER).png?raw=true" width="600px"/>

## 3 - Modelagem Lógica

<p>Membros: (ID_user (Chave Primária, int), Nome_user (varchar), Senha (varchar), Email (varchar), Data_inscricao (date), ID_clube (chave estrangeira, int), ID_endereço (chave estrangeira, varchar))</p> 
<p>Endereco: (ID_endereco (Chave Primária, int), Cidade (varchar), UF (varchar), CEP (int), Rua (varchar), Numero (int), Bairro (varchar))</p>
<p>Clubes_de_Leitura: (ID_clube (Chave Primária, int), Nome_clube (varchar), Descricao (text), Id_user (Chave estrangeira, int), ISBN (Chave estrangeira, int))</p>
<p>Livros: (ISBN (Chave Primária, int), Titulo (varchar), Genero (varchar), Editora (varchar), Sinopse (varchar), Autor (varchar))</p> 
<p>Discussoes: (ID_discussoes (Chave Primária, int), Conteudo (varchar), Data_Hora (datetime), ID_user (chave estrangeira, int), ISBN (chave estrangeira, int), ID_clube (chave estrangeira, int))</p>   
<p>Comentarios: (ID_comentarios (Chave Primária, int), Texto (varchar), Data_Hora (datetime), ID_user (chave estrangeira, int), ID_discussoes (chave estrangeira, int), ID_clube (chave estrangeira, int), ISBN (Chave estrangeira, int))</p> 

<img src="https://github.com/olie-dc/Prova-SQL/blob/main/imagem/BookWorms(tabelas).png?raw=true" width="600px"/>

## 4 - Modelagem Física



## 5 - Inserção de Dados



## 6 - CRUD

### Create:
```sql
INSERT INTO Membros (ID_user, Nome_user, Senha, Email, Data_inscricao, ID_clube, ID_endereco) 
VALUES (21, 'Victor', 'senha123', 'victor@example.com', '2023-05-01', 1, 1);
```
<img src="https://github.com/olie-dc/Prova-SQL/blob/main/img/Create.PNG?raw=true" width="200px"/>

### Read:
```sql
SELECT * FROM Membros;
````
<img src="https://github.com/olie-dc/Prova-SQL/blob/main/img/Read.PNG?raw=true" width="200px"/>

### Update:
```sql
UPDATE Membros SET Email = 'victor_updated@example.com' WHERE ID_user = 21;
```
<img src="https://github.com/olie-dc/Prova-SQL/blob/main/img/Uodate.PNG?raw=true" width="200px"/>

### Delete:
```sql
DELETE FROM Membros WHERE ID_user = 21;
```
<img src="https://github.com/olie-dc/Prova-SQL/assets/160071572/2c520895-42bc-4ea1-854f-078509c6b472" width="200px"/>

## 7 - Relatórios



