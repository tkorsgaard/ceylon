import ceylon.numeric.float {
	pi, cos, sin
}

"An astronomical body in 2 dimensions."
interface Body {
	"The position on the x axis."
	shared formal Float x;
	"The position on the y axis."
	shared formal Float y;
	"The radius of the object."
	shared formal Float r;
	"Draw the object."
	shared formal void draw(CanvasRenderingContext2D ctx);
	"Move the object in its orbit."
	shared formal void orbit();
}


class Sun(x, y, r, String color) 
		satisfies Body {
	
	shared actual Float x;
	shared actual Float y;
	shared actual Float r;
	
	draw = (CanvasRenderingContext2D ctx) {
		ctx.fillStyle = color;
		ctx.beginPath();
		ctx.arc(x, y, r, 0.0, pi * 2.0, true);
		ctx.closePath();
		ctx.fill();
	};
	
	orbit = noop;
	
}


class Planet(name, primary, r, Float v, String color = "#FFF", 
	rp = 0.0, String? ringColor = null) 
		satisfies Body {
	
	shared String name;
	shared Body primary;
	shared actual Float r;
	
	"Distance to the primary. (Radius of the orbit.)"
	shared Float rp;
	
	shared actual variable Float x = primary.x;
	shared actual variable Float y = primary.y - rp - (r + primary.r);
	
	variable Float radian = pi/2;
	
	orbit = () {
		radian += v / 360.0 * pi;
		x = primary.x - sin(radian) * (primary.r + rp);
		y = primary.y + cos(radian) * (primary.r + rp);
	};
	
	draw = (CanvasRenderingContext2D ctx) {
		ctx.fillStyle = color;
		ctx.beginPath();
		ctx.arc(x, y, r, 0.0, pi * 2.0, true);
		ctx.closePath();
		ctx.fill();
		
		if (exists ringColor) {
			ctx.strokeStyle = ringColor;
			ctx.lineWidth = r * 0.75;
			ctx.beginPath();
			ctx.arc(x, y, r * 1.6, 0.0, pi * 2.0, true);
			ctx.closePath();
			ctx.stroke();
		}
	};
}
