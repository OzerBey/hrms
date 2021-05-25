package kodlamaio.hrms.core.utilities.results.errors;

import kodlamaio.hrms.core.utilities.results.Result;

public class ErrorResult extends Result {

	public ErrorResult() {
		super(false);
	}

	public ErrorResult (String message) {
		super(false, message);
	}
}
