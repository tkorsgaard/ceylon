"Create the whole solar system."
[Sun, Planet*] createSystem(Integer width, Integer height) {
	
	//Feel free to fiddle with these:
	value adjust = height / 250.0;
	value dilate = 0.75;
	value speed = 2.0;
	value moonAdjust = adjust * 10;
	
	function scale(Float f) => f^0.7;
	
	value sol = Sun(width / 2.0, height / 2.0, 35.0 * dilate, "#FFFF44");    
	
	value mercurio = Planet("Mercury", sol, 3.0 * dilate, 5.0*speed, "#666565", scale(57.9) * adjust);
	
	value venus = Planet("Venus", sol, 5.0 * dilate, 1.0*speed, "#FFE1C3", scale(108.2) * adjust);
	
	value tierra = Planet("Earth", sol, 6.3 * dilate, 0.5*speed, "#0000FF", scale(149.5) * adjust);
	value luna = Planet("Moon", tierra, 2.0 * dilate, 4.0*speed, "#fff", scale(0.384) * moonAdjust);
	
	value marte = Planet("Mars", sol, 4.0 * dilate, 0.3*speed, "#E45117", scale(227.9) * adjust);
	value fobos = Planet("Phobos", marte, 0.9 * dilate, 5.0*speed, "#fff", scale(0.00937) * moonAdjust);
	value deimos = Planet("Deimos", marte, 0.7 * dilate, 3.0*speed, "#fff", scale(0.0234) * moonAdjust);
	
	value jupiter = Planet("Jupiter", sol, 20.0 * dilate, 0.1*speed, "#FFA347", scale(778.4) * adjust);
	value europa = Planet("Europa", jupiter, 2.0 * dilate, 4.0*speed, "#B18829", scale(0.671) * moonAdjust);
	value io = Planet("Io", jupiter, 2.0 * dilate, 3.0*speed, "#EA6900", scale(0.42) * moonAdjust);
	value ganimedes = Planet("Ganimede", jupiter, 3.0 * dilate, 3.5*speed, "#6C6A68", scale(1.07) * moonAdjust);
	value calisto = Planet("Callisto", jupiter, 3.0 * dilate, 2.0*speed, "#726D69", scale(1.88) * moonAdjust);
	
	value saturno = Planet("Saturn", sol, 10.0 * dilate, 0.07*speed, "#FFD4AA", scale(1426.7) * adjust, "#FFDDBB");
	value titan = Planet("Titan", saturno, 3.0 * dilate, 1.75*speed, "#FFCA2A", scale(1.22) * adjust + 10.0);
	
	value urano = Planet("Uranus", sol, 8.0 * dilate, 0.05*speed, "#48B5BB", scale(2871.0) * adjust);
	
	value neptuno = Planet("Neptune", sol, 8.0 * dilate, 0.03*speed, "#4471A0", scale(4498.3) * adjust);
	
	value pluton = Planet("Pluto", sol, 2.0 * dilate, 0.01*speed, "#BF6D0A", scale(5906.4) * adjust);
	
	return [
	sol, 
	mercurio, venus, 
	tierra, luna, 
	marte, fobos, deimos, 
	jupiter, europa, io, ganimedes, calisto, 
	saturno, titan,
	urano, neptuno, 
	pluton
	];
	
}