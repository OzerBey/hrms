package kodlamaio.hrms.entities.concretes.verifications;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "verification_code_candidates")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class VerificationCandidateCode {

	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "candidate_id")
	private int candidateId;

}
