package com.algaworks.gp.config;

import static com.algaworks.gp.utils.JdbcUtils.*;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.crypto.password.PasswordEncoder;

//@Configuration
public class JdbcSecurityConfig {
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder builder, 
			PasswordEncoder passwordEncoder, 
			DataSource dataSource) throws Exception {
		builder
			.jdbcAuthentication()
			.dataSource(dataSource)
			.passwordEncoder(passwordEncoder)
			.usersByUsernameQuery(USUARIO_POR_LOGIN)
			.authoritiesByUsernameQuery(PERMISSOES_POR_USUARIO)
			.groupAuthoritiesByUsername(PERMISSOES_POR_GRUPO);
	}
}
