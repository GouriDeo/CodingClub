public class empWhileprocedure {
	public static final  int IS_FULL_TIME = 1;
	public static final int IS_PART_TIME = 2;

	public static void calculateEmpWage(String company, int empRate, int numOfDays, int maxHrs)
	{
		
                //variables
                int empHrs = 0;
                int empWage = 0;
                int totalEmpWage = 0, totalworkingDays=0, totalEmpHrs=0;
                while (totalEmpHrs<= maxHrs && totalworkingDays<=numOfDays)
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
                }
                totalEmpWage = totalEmpHrs * empRate;
                System.out.println("Total Emp Wage"+"company is"+company+" " +totalEmpWage);

	}
	public static void main(String[] args){
		calculateEmpWage("DMart", 20, 2, 10);
		 calculateEmpWage("Reliance", 30, 3, 20);
	}

}
