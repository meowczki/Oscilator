import org.apache.commons.math3.ode.FirstOrderDifferentialEquations;
import org.apache.commons.math3.ode.FirstOrderIntegrator;
import org.apache.commons.math3.ode.nonstiff.EulerIntegrator;

import java.util.Arrays;

public class ODETester {
    public static void main(String[] args) {
        HarmonicOscilator oscilator = new HarmonicOscilator(1.0);
        FirstOrderIntegrator eulerIntegrator=new EulerIntegrator(0.001);
        double xStart[]={1.,0.};
        double xStop[]={0.,0.};
        //0 czas t0
        eulerIntegrator.integrate(oscilator,0,xStart,2*Math.PI,xStop);
        System.out.println(Arrays.toString(xStart));
        System.out.println(Arrays.toString(xStop));


    }
}
