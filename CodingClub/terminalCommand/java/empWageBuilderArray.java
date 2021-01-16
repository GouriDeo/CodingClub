public class empWageBuilderArray
{
	private int numOfCompany=0;
	private CompanyEmpWage[] companyEmpWageArray;

	public empWageBuilderArray() 
	{
		companyEmpWageArray = new CompanyEmpWage[5];
	}

	private void addCompanyEmpWage(String company, int empRatePerHour, int numOfWorkingDays, int maxHoursPerMonth)
	{
		companyEmpWageArray[numOfCompany] = new CompanyEmpWage(company, empRatePerHour, numofWorkingDays, maxHoursPerMonth);
		numbOfCompany++;
	}	

	private void computeEmpWage()
	{
		for(int i=0; i<numbOfCompant;i++)
		{
			companyEmpWageArray[i].setTotalEmpWage(this.calculateWageForCompany(companyEmpWageArray[i]));
			System.out.println(companyEmpWageArray[i])
		}
	}
	
	public void calculateWageForCompany(CompanyE)
	public static void main(String[] args){
		
	}
}

class CompanyEmpWage{
	
	public EmpOOPS()
}
