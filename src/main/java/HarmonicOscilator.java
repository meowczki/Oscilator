import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.FirstOrderDifferentialEquations;

public class HarmonicOscilator implements FirstOrderDifferentialEquations {
    private double omega2;

    public HarmonicOscilator(double omega2) {
        this.omega2 = omega2;
    }

    //rownanie 2 rzedu
    public int getDimension() {
        return 2;
    }

    public void computeDerivatives(double t, double[] x, double[] dxdt) throws MaxCountExceededException, DimensionMismatchException {
        //predkosc x[1]
        dxdt[0]=x[1];
        //polozenie x[0]
        dxdt[1]=-omega2*x[0];



    }
}
