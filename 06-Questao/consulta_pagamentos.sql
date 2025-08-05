SELECT 
    m.nome_completo,
    m.email,
    p2.nome_plano,
    COUNT(p.id_pagamento) AS qtde_pagamentos_pendentes_ou_atrasados,
    MAX(p.status_pagamento) AS status_mais_recente 
FROM membros m
JOIN assinaturas a ON m.id_membro = a.id_membro
JOIN planos p2 ON a.id_plano = p2.id_plano
JOIN pagamentos p ON a.id_assinatura = p.id_assinatura
WHERE 
    m.status_membro = 'ativo'
    AND p.status_pagamento IN ('pendente', 'atrasado')
GROUP BY 
    m.id_membro, m.nome_completo, m.email, p2.nome_plano;
