package btlSpringMvc;

import org.mindrot.jbcrypt.BCrypt;

public class taopass {
	
		public static void main(String[] args) {
			System.out.println(BCrypt.hashpw("1234", BCrypt.gensalt(12)));
//			System.out.println(BCrypt.checkpw("123456", "$2a$12$s8FyYcAauHqILMBcI6x0BepO5JI.9/C16QRYMswF7Avt0rRkOiR0u"));
		}
}
