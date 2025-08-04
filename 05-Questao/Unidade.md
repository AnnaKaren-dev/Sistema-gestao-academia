## Consulta SQL

```sql
SELECT nome_instrutor
FROM instrutores
WHERE
    id_unidade = (SELECT id_unidade FROM instrutores WHERE nome_instrutor = 'João Silva')
    AND nome_instrutor <> 'João Silva';

```

---

## Explicação da Lógica

1. **Descobrir em qual unidade o 'João Silva' trabalha**  
   Fiz  uma **subconsulta** para identificar o `id_unidade` associado a ele.

2. **Buscar todos os instrutores com esse mesmo `id_unidade`**  
   Utilizei esse valor como filtro na consulta principal.

3. **Excluir o próprio João Silva da listagem**  
 Apliquei um segundo filtro para que ele não apareça no resultado final.

---

##  Explicação Linha por Linha

- **`SELECT nome_instrutor`**  
  Retorna a coluna `nome_instrutor`. Esse é o resultado final que queremos ver.

- **`FROM instrutores`**  
  Indica que os dados serão consultados na tabela `instrutores`.

- **`WHERE id_unidade = (...)`**  
  Filtro principal: seleciona instrutores cujo `id_unidade` seja o mesmo de João Silva.

- **Subconsulta:**  
  ```sql
  (SELECT id_unidade FROM instrutores WHERE nome_instrutor = 'João Silva')
  ```  
  Executada primeiro, essa subconsulta retorna o valor do `id_unidade` do João Silva (no exemplo, é `1`).

- **`AND nome_instrutor <> 'João Silva'`**  
garante que o próprio João Silva não apareça na lista. O operador `<>` significa "diferente de".

---

## Inserção de Dados para Teste

```sql
INSERT INTO instrutores (nome_instrutor, especialidade, cref, salario_base, id_unidade) VALUES
('João Silva', 'musculacao', 'CREF0001', 3500.00, 1),
('Maria Oliveira', 'cardio', 'CREF0002', 3200.00, 1),
('Ana Pereira', 'pilates', 'CREF0003', 3800.00, 2);
```

  Com esses dados:
- João Silva e Maria Oliveira estão na **unidade 1**
- Ana Pereira está na **unidade 2**

---

## Resultado Esperado

Como João Silva está na unidade `1`, e Maria Oliveira também, o único nome que será exibido (excluindo João) é:

```
Maria Oliveira
```
