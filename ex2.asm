# Integrantes: João Lucas de Lima Souza (RA:00360044) / Pedro Chagas (RA:00359511) / Guilherme Rivoredo (RA:00359303)


addi $t0, $zero, 268500992 # Armazena em t0 o endereco base da memoria de dados

addi $t1, $zero, 7         # Carrega a nota 7 em t1
sw $t1, 0($t0)             # Armazena a nota 7 no offset 0 da memoria
addi $t1, $zero, 3         # Carrega a nota 3 em t1
sw $t1, 4($t0)             # Armazena a nota 3 no offset 4 da memoria
addi $t1, $zero, 9         # Carrega a nota 9 em t1
sw $t1, 8($t0)             # Armazena a nota 9 no offset 8 da memoria
addi $t1, $zero, 2         # Carrega a nota 2 em t1
sw $t1, 12($t0)            # Armazena a nota 2 no offset 12 da memoria
addi $t1, $zero, 8         # Carrega a nota 8 em t1
sw $t1, 16($t0)            # Armazena a nota 8 no offset 16 da memoria
addi $t1, $zero, 5         # Carrega a nota 5 em t1
sw $t1, 20($t0)            # Armazena a nota 5 no offset 20 da memoria
addi $t1, $zero, 10        # Carrega a nota 10 em t1
sw $t1, 24($t0)            # Armazena a nota 10 no offset 24 da memoria
addi $t1, $zero, 4         # Carrega a nota 4 em t1
sw $t1, 28($t0)            # Armazena a nota 4 no offset 28 da memoria
addi $t1, $zero, 6         # Carrega a nota 6 em t1
sw $t1, 32($t0)            # Armazena a nota 6 no offset 32 da memoria
addi $t1, $zero, 1         # Carrega a nota 1 em t1
sw $t1, 36($t0)            # Armazena a nota 1 no offset 36 da memoria


lw $t5, 0($t0)             # Inicializa t5 (maior nota) com a primeira nota lida da memoria
lw $t6, 0($t0)             # Inicializa t6 (menor nota) com a primeira nota lida da memoria
addi $t7, $zero, 0         # Inicializa t7 (contador de notas < 5) com 0

add $t3, $zero, $t0        # Inicializa t3 (ponteiro de endereco) com o endereco base da memoria
addi $t1, $zero, 0         # Inicializa t1 (contador do laco i) com 0
addi $t2, $zero, 10        # Inicializa t2 com o limite do laco (10 iteracoes)
addi $t8, $zero, 5         # Inicializa t8 com o valor de corte 5 para comparacao


loop_notas:
beq $t1, $t2, fim          # Compara se o contador (t1) atingiu o limite 10 (t2); se sim, vai para 'fim'
lw $t4, 0($t3)             # Carrega a nota do endereco atual de memoria (apontado por t3) em t4


slt $t9, $t5, $t4          # Verifica se a maior nota atual (t5) e menor que a nota lida (t4). Se sim, t9 = 1
beq $t9, $zero, pula_max   # Se t9 for 0 (t5 >= t4), ignora a atualizacao do maximo desvia para 'pula_max'
add $t5, $zero, $t4        # Atualiza o registrador da maior nota (t5) copiando o valor de t4
pula_max:                  # Rotulo para continuar caso a nota nao seja a maior


slt $t9, $t4, $t6          # Verifica se a nota lida (t4) e menor que a menor nota atual (t6). Se sim, t9 = 1
beq $t9, $zero, pula_min   # Se t9 for 0 (t4 >= t6), ignora a atualizacao do minimo e desvia para 'pula_min'
add $t6, $zero, $t4        # Atualiza o registrador da menor nota (t6) copiando o valor de t4
pula_min:                  # Rotulo para continuar caso a nota nao seja a menor


slt $t9, $t4, $t8          # Verifica se a nota lida (t4) e menor que 5 (t8). Se sim, t9 = 1
beq $t9, $zero, pula_cont  # Se t9 for 0 (t4 >= 5), ignora o incremento e desvia para 'pula_cont'
addi $t7, $t7, 1           # Incrementa o contador de notas menores que 5 (t7) em 1
pula_cont:                 # Rotulo para continuar a execucao apos a verificacao de nota vermelha


addi $t3, $t3, 4           # Avanca o ponteiro de memoria (t3) em 4 bytes para a proxima palavra
addi $t1, $t1, 1           # Incrementa o contador do laco (t1) em 1
j loop_notas               # Retorna incondicionalmente para o inicio do laco

fim:                       # Rotulo que finaliza a execucao do laco