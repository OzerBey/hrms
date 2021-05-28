package kodlamaio.hrms.business.concretes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kodlamaio.hrms.business.abstracts.CandidateService;
import kodlamaio.hrms.core.utilities.results.DataResult;
import kodlamaio.hrms.core.utilities.results.Result;
import kodlamaio.hrms.dataAccess.abstracts.CandidateDao;
import kodlamaio.hrms.dataAccess.abstracts.UserDao;
import kodlamaio.hrms.entities.concretes.Candidate;

@Service
public class CandidateManager implements CandidateService {

	private CandidateDao candidateDao;
	private UserDao userDao;

	@Autowired
	public CandidateManager(CandidateDao candidateDao, UserDao userDao) {
		super();
		this.candidateDao = candidateDao;
		this.userDao = userDao;

	}

	@Override
	public DataResult<List<Candidate>> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DataResult<Candidate> getByIdentifacationNumber(String identificationNumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Result add(Candidate candidate) {
		// TODO Auto-generated method stub
		return null;
	}

}
