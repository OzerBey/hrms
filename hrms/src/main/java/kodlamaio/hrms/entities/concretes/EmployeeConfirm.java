package kodlamaio.hrms.entities.concretes;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "employee_confirms")
public class EmployeeConfirm {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "employee_id")
	private int employeeId;

	@Column(name = "is_confirmed")
	private boolean isConfirmed;

	@Column(name = "confirm_date")
	private LocalDate confirmDate;
}
