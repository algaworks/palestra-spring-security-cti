package com.algaworks.gp.utils;

public class JdbcUtils {
	
	public static final String USUARIO_POR_LOGIN = "SELECT login, senha, ativo, nome FROM usuario"
			+ " WHERE login = ?";
	
	public static final String PERMISSOES_POR_USUARIO = "SELECT u.login, p.nome as nome_permissao FROM usuario_permissao up"
			+ " JOIN usuario u ON u.id = up.usuario_id"
			+ " JOIN permissao p ON p.id = up.permissao_id"
			+ " WHERE u.login = ?";
	
	public static final String PERMISSOES_POR_GRUPO = "SELECT g.id, g.nome, p.nome  as nome_permissao FROM grupo_permissao gp"
			+ " JOIN grupo g ON g.id = gp.grupo_id"
			+ " JOIN permissao p ON p.id = gp.permissao_id"
			+ " JOIN usuario_grupo ug ON ug.grupo_id = g.id"
			+ " JOIN usuario u ON u.id = ug.usuario_id"
			+ " WHERE u.login = ?";

}
