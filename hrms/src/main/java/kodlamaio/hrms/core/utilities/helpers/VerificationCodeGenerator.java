package kodlamaio.hrms.core.utilities.helpers;

import java.util.UUID;

public class VerificationCodeGenerator {

	public UUID generate() {
		UUID code = UUID.randomUUID();
		return code;
	}
}
