package kodlamaio.hrms.business.abstracts;

import kodlamaio.hrms.core.utilities.results.Result;

public interface VerificationCodeService {

	Result sendVerificationCode(int userId);

	Result verify(String code);
}
