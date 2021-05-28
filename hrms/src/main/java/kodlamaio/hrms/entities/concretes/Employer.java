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

@EqualsAndHashCode(callSuper = false)
@Entity
@Data
@Table(name = "employers")
@AllArgsConstructor
@NoArgsConstructor
public class Employer extends User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	@NotNull
	private int id;

	@Column(name = "company_name")
	@NotNull
	private String companyName;

	@Column(name = "web_address")
	@NotNull
	private String webAddress;

	@Column(name = "phone_number")
	@NotNull
	private String phoneNumber;

}
