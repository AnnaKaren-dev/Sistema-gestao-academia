SELECT nome_instrutor
FROM instrutores
WHERE
    id_unidade = (SELECT id_unidade FROM instrutores WHERE nome_instrutor = 'João Silva')
    AND nome_instrutor <> 'João Silva';
