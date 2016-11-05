insert into permissao (id, nome) values 
	(1, 'ROLE_PG_PROJETOS')
	, (2, 'ROLE_PG_REL_EQUIPE')
	, (3, 'ROLE_PG_REL_CUSTOS')
;
	
insert into usuario (id, nome, login, senha, ativo) values 
	(1, 'Carlos', 'carlos', '$2a$10$JvyF9q/k/eYwXTVjc4Ay0OT/dCwjW14eT88q3e587jaENTvtt30s2', true)
	, (2, 'Flávio', 'flavio', '$2a$10$JvyF9q/k/eYwXTVjc4Ay0OT/dCwjW14eT88q3e587jaENTvtt30s2', true)
;
	
insert into usuario_permissao (usuario_id, permissao_id) values 
	(1, 1)
	, (1, 2)
	, (1, 3)
	, (2, 1)
	, (2, 2)
;










--insert into grupo (id, nome) values 
--	(1, 'DIRETOR') 
--	, (2, 'GERENTE')
--;
	
--insert into usuario_grupo (usuario_id, grupo_id) values 
--	(1, 1)
--	, (2, 2)
--;
	
--insert into grupo_permissao (grupo_id, permissao_id) values 
--	(1, 1)
--	, (1, 2)
--	, (1, 3)
--	, (2, 1)
--	, (2, 2)
--;