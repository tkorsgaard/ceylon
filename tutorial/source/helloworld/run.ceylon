import ceylon.collection {
	LinkedList,
	ArrayList
}

Float? askUserForNumber(String question) {
	process.write(question);
	String? userX = process.readLine();
	if (exists userX) {
		return parseFloat(userX);
	} else {
		return 0.0;
	}
}

"Run the module `helloworld`."
shared void run() {
	
	function multiply(Float a, Float b) => a * b;
	function add(Float a, Float b) => a + b;	
	
	void printResult(Float(Float, Float) operation, Float x, Float y) =>
			print("Result: ``operation(x, y)``");
	
	
	
	
	print("Hello world");
	print("Hello");
	print("Hi there");
	print("I said hi!");
	
	variable Integer test = 0;
	variable String test2 = "Guliver";
	
	print(test.predecessor);
	print(test2.uppercased);
	
	value names = ArrayList { "Tom", "Dick", "Harry" };
	
	for (item in names) {
		print(item);
	}
	
	print("===========================");
	
	value x = 2 + 2;
	value y = 123 * 456;
	print("x is ``x`` and y is ``y`` and the multiplum is `` x * y ``");
	
	process.write("give me a number: ");
	
	String? userX = process.readLine();
	
	if (exists userX) {
		
		print("``userX`` was entered");
	}
	
	askUserForNumber("Gogo girls? ");
	
	
	
	printResult((Float x, Float y) => x * y, 10.0, 3.0);
	
	
	
	
	
}