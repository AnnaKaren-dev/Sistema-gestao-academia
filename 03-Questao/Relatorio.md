Resumo da Consulta SQL:
Para cada unidade da academia, o SELECT retorna as seguintes informações:

Nome da unidade (u.nome_unidade).

Total de membros ativos vinculados a assinaturas ativas naquela unidade.

Receita total gerada por pagamentos confirmados dessas assinaturas.

Receita média por membro ativo, calculada dividindo a receita total pelo número de membros ativos.

Total de check-ins realizados por esses membros na respectiva unidade.

Detalhes técnicos da consulta:
Usa LEFT JOINs entre as tabelas:

unidades (u)

assinaturas (a)

membros (m)

pagamentos (pg)

check_ins (c)

Aplica filtros como:

Assinaturas com status 'ativa'

Membros com status 'ativo'

Pagamentos com status 'pago'

Os dados são agrupados por unidade (GROUP BY u.id_unidade) e ordenados pela receita total em ordem decrescente (ORDER BY receita_total DESC).
