package kodlamaio.hrms.core.utilities.business;

import kodlamaio.hrms.core.utilities.results.Result;
import kodlamaio.hrms.core.utilities.results.errors.ErrorResult;
import kodlamaio.hrms.core.utilities.results.successes.SuccessResult;

public class BusinessRules {

	public static Result run(Result... rules) {
		for (Result rule : rules) {
			if (!rule.isSuccess()) {
				return new ErrorResult(rule.getMessage());
			}
		}
		return new SuccessResult();
	}
}
