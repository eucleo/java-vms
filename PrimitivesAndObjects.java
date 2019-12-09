public class PrimitivesAndObjects {
	private static final java.util.Random rand = new java.util.Random();
    public static void main(String[] args) {
        int max;
        for(int i=0;i<10;i++) {
            max=10240000+i;
            System.gc();
            long start = System.currentTimeMillis();
            Long[] variable = new Long[max];
            for(int j=0;j<max;j++) {
                variable[j]=666L;
            }
            System.out.println(variable[rand.nextInt(max)]);
            System.out.println("Long: " + (System.currentTimeMillis()-start) + "(ms)");
            System.gc();
            start = System.currentTimeMillis();
            long[] variable2 = new long[max];
            for(int j=0;j<max;j++) {
                variable2[j]=666L;
            }
            System.out.println(variable2[rand.nextInt(max)]);
            System.out.println("long: " + (System.currentTimeMillis()-start) + "(ms)");
            System.gc();
        }
    }
}
