# Integrantes: João Lucas de Lima Souza (RA:00360044) / Pedro Chagas (RA:00359511) / Guilherme Rivoredo (RA:00359303)

addi $t0, $zero, 268500992 # Armazena em t0 o endereco base da memoria de dados do MIPS
addi $t1, $zero, 8         # Armazena a soma dos ultimos digitos do RA (4+4=8) no registrador t1
sw $t1, 20($t0)            # Armazena o conteudo de t1 na posicao de memoria com offset 20 a partir do endereco base