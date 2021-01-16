public class empDailyWage
{
        public static void main(String[] args)
        {
                int IS_FULL_TIME = 1;
		int empHrs = 0;
		int ratePerHrs = 20;
		int empWage = 0;
                double empCheck = Math.floor(Math.random() * 10) % 2;
                if (empCheck == IS_FULL_TIME)
		{
                	empHrs = 8;
			System.out.println("Employee is present");
                }
		else
          	{      
		System.out.println("Employee is absent");
        		empHrs = 0;
		}
		empWage = ratePerHrs * empHrs;
		System.out.println("Daily wage is: "+empWage);
	}
}
