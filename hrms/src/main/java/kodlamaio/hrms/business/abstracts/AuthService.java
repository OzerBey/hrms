package kodlamaio.hrms.business.abstracts;

import kodlamaio.hrms.core.utilities.results.DataResult;
import kodlamaio.hrms.entities.concretes.Candidate;
import kodlamaio.hrms.entities.concretes.Employer;

public interface AuthService {

	DataResult<Candidate> approveCandidate(Candidate candidate, String confirmPassword);

	DataResult<Employer> approveCandidate(Employer employer, String confirmPassword);
}
