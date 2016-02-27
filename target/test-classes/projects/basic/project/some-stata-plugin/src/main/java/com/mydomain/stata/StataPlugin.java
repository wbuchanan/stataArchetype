package com.mydomain.stata;

import com.stata.sfi.*;

/**
 * This is the description used for the Maven integration test for the Archetype
 *
 * @author Billy Buchanan
 * @version 0.0.0-SNAPSHOT
 */
public class StataPlugin {

	/**
	 * Boiler plate method that you can use quickly to get up and running.
	 * @param args This value is automatically obtained from the args()
	 *                option of the javacall command.  If possible, writting
	 *                your plugin to pass the parameters to this method will
	 *                make it easier to test/debug the Java side of things
	 *                independent of Stata.  To do that change 'int
	 *                entryPoint' to 'void main', recompile, and then you
	 *                should be able to run the same plugin from the command
	 *                line.
	 * @return The method must return an integer value to conform to the Java
	 * API expectations.  Non-zero values trigger errors (much the same way
	 * that non-zero returns in other compiled languages often indicate errors)
	 */
	public static int newMethodThatDoesStuffAndThings(String[] args) {

		// Use this method to call class constructors and/or methods


		// Returns a value of 0 on success
		return 0;

	} // End of Method declaration

} // End of Class declaration
