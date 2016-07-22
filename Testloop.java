package com.ramji.sample;
import java.io.*;
import java.lang.*;
public class Testloop {
	
	public static void main(String args[]){
		
		String[] names = new String[3];
		names[0]= "Blueshirt";
		names[1]="RedShirt";
		names[2]="BrownShirt";
		
		int[] numbers ={100,200,300};
		
		for(String name : names){
			System.out.println("Name" +name);			
		}
		for(int number : numbers){
			System.out.println("Numbers" +number);
		}
		
	}
	

}
