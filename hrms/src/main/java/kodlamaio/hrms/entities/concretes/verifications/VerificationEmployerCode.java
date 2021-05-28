package kodlamaio.hrms.entities.concretes.verifications;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "verification_code_employers")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class VerificationEmployerCode {

	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "employer_id")
	private int employerId;
}
