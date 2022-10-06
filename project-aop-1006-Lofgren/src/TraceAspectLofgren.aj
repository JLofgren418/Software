
public aspect TraceAspectLofgren {

    /**
     * The methods of those classes.
     */
    pointcut methodToTrace():  execution(String getName(..));



    /**
     * Prints trace messages before and after executing methods.
     */
    before(): methodToTrace() {
        System.out.println("\t-->" + thisJoinPointStaticPart.getSignature() + ", " +
                thisJoinPointStaticPart.getSourceLocation().getLine());
    }

    after(): methodToTrace() {
        System.out.println("\t<--" + ", loc: " + thisJoinPointStaticPart.getSourceLocation().getFileName());
    }
    
}
