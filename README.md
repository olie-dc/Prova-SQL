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

[Insira aqui a modelagem física do projeto]

## 5 - Inserção de Dados

[Insira aqui o script de inserção de dados no banco de dados]

## 6 - CRUD

[Insira aqui o script CRUD para operações no banco de dados]

## 7 - Relatórios

[Insira aqui consultas SQL para gerar relatórios a partir do banco de dados]

