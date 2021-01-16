public class uc8MultipleComp
{
        public static final  int IS_FULL_TIME = 1;
        public static final int IS_PART_TIME = 2;
	private final String company; 
	private final int empRatePerHour; 
	private final int numOfWorkingDays; 
	private final int maxHoursPerMonth;


        public EmpWageBuilderObject(String company, int empRatePerHour, int numOfWorkingDays, int maxHoursPerMonth) {
                this.company = company;
		this.empRatePerHour = empRatePerHour;
		this.numOfWorkingDays = numOfWorkingDays;
		this.maxHoursPerMonth = maxHoursPerMonth;
	}	

	public void computeEmpWage() 
	{
		//variables
                int empHrs = 0, totalEmpHrs = 0, totalWorkingDays = 0;
                //computation
                while (totalEmpHrs<= maxHoursPerMonth && totalWorkingDays < numOfWorkingDays) 
		{
                        totalWorkingDays++;
                        int empCheck = (int) Math.floor(Math.random()*10)%3;
                        switch(empCheck)
                        {
                                case IS_PART_TIME:
                                        empHrs = 4;
                                        break;
                                case IS_FULL_TIME:
                                        empHrs = 8;
                                        break;
                                default:
                                        empHrs = 0;
                        }
                        totalEmpHrs += empHrs;
                        System.out.println("Day:" +totalWorkingDays+ " Emp Hrs:"+empHrs);
                }
                int totalEmpWage = totalEmpHrs * empRatePerHour;
        }
	
	@Override
	public String toString() {
		return "Total emp wage for company "+company+" is: " +totalEmpWage;
	}

        public static void main(String[] args)
        {
                EmpWageBuilderObject dMart = new EmpWageBuilderObject("DMart",20,2,10);
		EmpWageBuilderObject reliance = new EmpWageBuilderObject("Reliance",10,4,20);
		dMart.computeEmpWage();
		System.out.println(dMart);
		reliance.computeEmpWage();
		System.out.println(reliance);
        }

}
