package kodlamaio.hrms.core.adapters.concretes;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Service;

import kodlamaio.hrms.core.adapters.abstracts.MernisService;
import kodlamaio.hrms.core.utilities.results.Result;
import kodlamaio.hrms.core.utilities.results.errors.ErrorResult;
import kodlamaio.hrms.core.utilities.results.successes.SuccessResult;
import kodlamaio.hrms.entities.concretes.Candidate;

@Service
public class FakeMernisAdapter implements MernisService {

	@Override
	public Result validate(Candidate candidate) {
		String regex = "^[0-9]+$";
		String idendityNumber = candidate.getIdentityNumber();
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(candidate.getIdentityNumber());

		if (idendityNumber.length() != 11) {
			return new ErrorResult("invalid identitynumber");
		}

		else if (matcher.matches() && !idendityNumber.startsWith("0")) {
			return new SuccessResult("valid identity");
		} else {
			return new ErrorResult();
		}
	}
}
