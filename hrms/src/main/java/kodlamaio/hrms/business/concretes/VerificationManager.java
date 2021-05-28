package kodlamaio.hrms.business.concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kodlamaio.hrms.business.abstracts.VerificationCodeService;
import kodlamaio.hrms.core.utilities.results.Result;
import kodlamaio.hrms.core.utilities.results.successes.SuccessResult;
import kodlamaio.hrms.dataAccess.abstracts.UserDao;
import kodlamaio.hrms.dataAccess.abstracts.VerificationCodeDao;

@Service
public class VerificationManager implements VerificationCodeService {

	private VerificationCodeDao verificationCodeDao;
	private UserDao userDao;

	@Autowired
	public VerificationManager(VerificationCodeDao verificationDao, UserDao userDao) {
		super();
		this.verificationCodeDao = verificationDao;
		this.userDao = userDao;
	}

	@Override
	public Result sendVerificationCode(int userId) {

		return new SuccessResult("Verification code sent ");
	}

	@Override
	public Result verify(String code) {
		return new SuccessResult("verified");
	}

}
