import 'package:flutter/material.dart';

class Page2 extends StatelessWidget { 
const Page2({Key? key}) : super(key: key); 

@override 
Widget build(BuildContext context) { 
	return Container( 
  
	color:Colors.black, 
	child: Column(
	  children: const [
	    Center( 
	        
	    	child: Text( 
	          
	    	"Page Number 2", 
	    	style: TextStyle( 
	    		color: Colors.white, 
	    		fontSize: 25, 
	    		fontWeight: FontWeight.w500, 
	    	), 
	        
	    	),
	         
	    ),
	  ],
	), 
	); 
} 
} 