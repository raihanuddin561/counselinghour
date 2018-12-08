package com.spirngweb.encoder;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordEncoderService {
	public String encoder(String password) {
		BCryptPasswordEncoder encode = new BCryptPasswordEncoder();
		return encode.encode(password);
	}
}
