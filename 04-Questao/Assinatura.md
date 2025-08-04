## Consulta SQL

```sql
SELECT m.nome_completo
FROM membros m
JOIN assinaturas a ON m.id_membro = a.id_membro
JOIN planos p ON a.id_plano = p.id_plano
WHERE a.status_assinatura = 'ativa' AND p.valor_mensal = (SELECT MAX(valor_mensal) FROM planos);
```
