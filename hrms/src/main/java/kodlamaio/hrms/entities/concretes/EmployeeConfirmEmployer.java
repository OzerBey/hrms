package kodlamaio.hrms.entities.concretes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "employee_confirms_employers")
public class EmployeeConfirmEmployer {
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "employer_id")
	private int employerId;
}
