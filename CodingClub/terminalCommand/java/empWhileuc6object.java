public class empWhileuc6object {
	public final  int IS_FULL_TIME = 1;
	public final int IS_PART_TIME = 2;
        public final int EMP_RATE_PER_HOUR;
	public final int NUM_OF_WORKING_DAYS;
	public final int MAX_HRS_IN_MONTH;
	public final String company;

	public EmpTotalEmpWage(String comp, int empRate, int numOfDays, int maxDays)
	{
		company=comp;
		EMP_RATE_PER_HOUR=empRate;
		NUM_OF_WORKING_DAYS=numOfDays;
		MAX_HRS_IN_MONTH=maxDays;

	}
	public static void main(String[] args){
		EmpTotalEmpWage companyWage = new EmpTotalEmpWage("DMaet", 2, 1, 1);
		//variables
		int empHrs = 0;
		int empWage = 0;
		int totalEmpWage = 0, totalworkingDays=0, totalEmpHrs=0;
		while (totalEmpHrs<= companyWage.MAX_HRS_IN_MONTH && totalworkingDays<=companyWage.NUM_OF_WORKING_DAYS)
		{
			totalworkingDays++;
			int empCheck = (int) Math.floor(Math.random() * 10)%3;
			switch (empCheck) 
			{
				case IS_FULL_TIME:
					empHrs = 8;
					break;
				case IS_PART_TIME:
					empHrs = 4;
					break;
				default:
					empHrs = 0;
			}
			totalEmpHrs += empHrs;
			System.out.println("Day:" +totalworkingDays+ " Emp Hrs:"+empHrs+ " Total emp hre:" +totalEmpHrs);
			empWage = empHrs * companyWage.EMP_RATE_PER_HOUR;
			totalEmpWage += empWage;
			}
         		System.out.println("Total Emp Wage:" +totalEmpWage);
	}

}

