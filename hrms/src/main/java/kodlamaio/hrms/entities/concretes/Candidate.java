package kodlamaio.hrms.entities.concretes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@EqualsAndHashCode(callSuper = true)
@Entity
@Data
@Table(name = "candidates")
@AllArgsConstructor
@NoArgsConstructor
public class Candidate extends User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	@NotNull
	private int id;

	@Column(name = "first_name")
	@NotNull
	private String firstName;

	@Column(name = "last_name")
	@NotNull
	private String lastName;

	@Column(name = "identity_number")
	@NotNull
	private String identityNumber;

	@Column(name = "birth_year")
	@NotNull
	private int birthYear;

}
