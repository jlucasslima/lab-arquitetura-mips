# Exercícios em Assembly MIPS 

Este repositório contém exercícios práticos de programação em linguagem Assembly para a arquitetura MIPS, desenvolvidos como parte das atividades do curso de Ciência da Computação da PUC-SP.

## Descrição dos Arquivos

### `ex1.asm`
Um programa introdutório que demonstra a manipulação de registradores e armazenamento na memória de dados do MIPS. 
* **O que faz:** Calcula a soma dos últimos dígitos do RA e armazena o resultado (8) na memória em um offset específico (20) a partir do endereço base.

### `ex2.asm`
Um algoritmo mais complexo que utiliza estruturas de repetição (loops) e condicionais em Assembly para processar um conjunto de dados.
* **O que faz:** 1. Carrega um vetor com 10 notas escolares (inteiros) na memória de dados.
  2. Itera sobre esses endereços de memória.
  3. Identifica e armazena em registradores específicos a **maior nota** (`$t5`), a **menor nota** (`$t6`) e a **quantidade de notas abaixo da média 5** (`$t7`).

## Como Executar

Para rodar e testar estes códigos, você precisará de um simulador MIPS, como o **MARS (MIPS Assembler and Runtime Simulator)** ou o **QtSPIM**.

