package kodlamaio.hrms.dataAccess.abstracts;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import kodlamaio.hrms.entities.concretes.Candidate;

public interface CandidateDao extends JpaRepository<Candidate, Integer> {

	List<Candidate> getAllByEmailAddress(String email);

	Candidate getByIdentityNumber(String identityNumber);

	boolean exitsByIdentityNumber(String identityNumber);

}
