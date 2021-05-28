package kodlamaio.hrms.business.concretes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import kodlamaio.hrms.business.abstracts.JobTitleService;
import kodlamaio.hrms.core.utilities.results.DataResult;
import kodlamaio.hrms.core.utilities.results.Result;
import kodlamaio.hrms.core.utilities.results.errors.ErrorResult;
import kodlamaio.hrms.core.utilities.results.successes.SuccessDataResult;
import kodlamaio.hrms.core.utilities.results.successes.SuccessResult;
import kodlamaio.hrms.dataAccess.abstracts.JobTitleDao;
import kodlamaio.hrms.entities.concretes.JobTitle;

@Service
public class JobTitleManager implements JobTitleService {

	private JobTitleDao jobTitleDao;

	@Autowired
	public JobTitleManager(JobTitleDao jobTitleDao) {
		super();
		this.jobTitleDao = jobTitleDao;
	}

	@Override
	public DataResult<List<JobTitle>> getAll() {
		return new SuccessDataResult<List<JobTitle>>(this.jobTitleDao.findAll(), "All titles listed");
	}

	@Override
	public Result add(@RequestBody JobTitle jobTitle) {
		if (jobTitleDao.existsByJobTitle(jobTitle.getTitle())) {
			return new ErrorResult("This job is already defined");
		} else {
			jobTitleDao.save(jobTitle);
			return new SuccessResult("Job added successfully");
		}
	}

}
