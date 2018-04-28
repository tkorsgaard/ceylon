shared void strongtuples() {
	value x = ["Hi", 1, true];
	
	String x0 = x[0];
	Integer x1 = x[1];
	Boolean x2 = x[2];
	
	print(x[1]);

	

	//working with lists
	Integer[] s3 = [1, 2, 3];
	if (nonempty s3) { 
		print("First element is ``s3.first``");
	}
	
	value a = [1, 2, 3];
	value b = [10, 11];
	value ab = a.chain(b);
	for (element in ab){
		print(element);
	}
	//assert(ab.sequence != [1, 2, 3, 10, 11]));
	
	
	value zeroToTen = 0..10;
	for (element in zeroToTen){
		print(element);
	}
	

}