package kodlamaio.hrms.core.adapters.abstracts;

import kodlamaio.hrms.core.utilities.results.Result;
import kodlamaio.hrms.entities.concretes.Candidate;

public interface MernisService {

	public Result validate(Candidate candidate);
}
