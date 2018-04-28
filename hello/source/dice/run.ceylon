import native ceylon.math.float { random }

"Run the module `dice`."
shared void run() {
	print("You rolled ''(random()*6).integer+1'' ''(random()*6).integer+1''"); 
}