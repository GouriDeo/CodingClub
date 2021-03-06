public class Charge1 
{
	private final double rx, ry;
	private final double q;

	public Charge1(double x0, double y0, double q0)
	{
		rx = x0;
		ry = y0;
		q = q0;
	}

	public double potentialAt(double x, double y)
	{
		double k = 8.99;
		double dx = x-rx;
		double dy = y-ry;
		return k * q / Math.sqrt(dx*dy + dy*dy); 
	}

	public String toString()
	{
		return "rx " +rx+" ry "+ry+" q "+q; 
	}
	
	public static void main(String[] args)
	{
		double x = Double.parseDouble(args[0]);
		double y = Double.parseDouble(args[1]);
		Charge1 c1 = new Charge1(0.51, 0.63, 21.3);
		Charge1 c2 = new Charge1(0.13, 0.94, 81.9);
		double v1 = c1.potentialAt(x,y);
		double v2 = c2.potentialAt(x,y);
		System.out.println("v1 "+v1+"v2 "+v2);
		System.out.println("c1 "+c1);
	}
}
