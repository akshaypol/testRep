/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.Member.Controller;

import java.util.Scanner;

/**
 *
 * @author genesis
 */
public class Factorial {

    public static void main(String[] args) {

        // label for outer loop 
        outer:
        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++) {
                if (j == 3) {
                    break outer;
                }
                System.out.println(" value of j = " + j);
            }
        } // end of outer loop 
    } // end of main() 
}
