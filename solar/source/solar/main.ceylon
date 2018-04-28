"The program entry point."
shared void run() {
	
	print("Starting...");
	
	variable value stopped = false;
	
	Integer width;
	Integer height;
	CanvasRenderingContext2D ctx;
	dynamic {
		//direct calls to JavaScipt with
		//dynamic typing
		dynamic win = openCanvasWindow();
		dynamic canvas = win.ceylonCanvas;
		width = canvas.scrollWidth;
		height = canvas.scrollHeight;
		canvas.width = width;
		canvas.height = height;
		ctx = canvas.getContext("2d");        
		setOnStop(() => stopped = true);
	}
	
	value system = createSystem(width, height);
	value [sol, *planets] = system;
	
	value labels 
			= " | ".join { 
		for (planet in planets) 
		if (planet.primary==sol) 
		planet.name + ":" + 
				formatFloat(planet.rp,0,0)
	};
	
	variable value time = 0;
	
	void paint() {
		ctx.fillStyle = "#000";
		ctx.fillRect(0, 0, width, height);
		
		for (body in system) {
			body.draw(ctx);
		}
		
		ctx.fillStyle = "#fff";
		ctx.fillText("Time: ``time`` | ``labels`` 
		              \{EM DASH} Solar System demo powered by Ceylon", 
			10, 10);
	}
	
	void loop() {
		
		if (stopped) {
			print("Stopped");
			return;
		}
		
		dynamic {
			//schedule the next iteration
			requestAnimationFrame(loop);
		}
		
		time++;
		
		for (planet in planets) {
			planet.orbit();
		}
		
		paint();
	}
	
	loop();
	
}


