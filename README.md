# Patera

Desafio técnico para a vaga de Engenheiro de Suporte Júnior na Cumbuca.

O desafio consiste em receber nomes de reis e rainhas do reino de Cumbúquinha via
CLI e retornar os mesmos nomes, mas com o seu grau de parentesco em algarismos 
romanos logo após.

Por exemplo, se o input do usuário for:

```
Arthur
Elizabeth
Henrique
Henrique
```

O script emitirá o seguinte output:

```
Arthur I
Elizabeth I
Henrique I
Henrique II
```

## Instalação

Será necessário que seu Elixir esteja na versão 1.17 ou superior.
Caso queira rodar o projeto via asdf, basta seguir o 
(tutorial de instalação)[https://github.com/asdf-vm/asdf-elixir] e escolher a versão 1.17.

Com o seu Elixir na versão correta, basta entrar no diretorio do projeto e usar
o comando `mix escript.build`.

## Como usar

Inicie o script com `./patera`.

O script aceita apenas um nome por linha e é finalizado quando o input for uma
linha em branco.

Você pode rodar os testes usando o comando `mix test`.
