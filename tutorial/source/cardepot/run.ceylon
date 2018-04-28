abstract class Vehicle() {
	shared formal String name;
	shared formal Integer new_price;
	shared formal Integer horse_power;
	
}

// types of cars
class Economy() {}
class Family() {}
class Sport() {}
class Truck() {}
class Luxury() {}
class OffRoader() {}

// Makes of cars
class Toyota() {
	shared Integer level = 4;
	shared Integer getLevel() {
		return level;
	}
	
}
class Audi() {
	shared Integer level = 2;
	shared Integer getLevel() {
		return level;
	}
}
class VW() {
	shared Integer level = 3;
	shared Integer getLevel() {
		return level;
	}
}
class Seat() {
	shared Integer level = 5;
	shared Integer getLevel() {
		return level;
	}
}
class Tesla() {
	shared Integer level = 1;
	shared Integer getLevel() {
		return level;
	}
}

alias Type => Economy|Family|Sport|Truck|Luxury|OffRoader;
alias Make => Toyota|Audi|VW|Seat|Tesla;


//value rankMake = [Tesla(), Audi(),VW(),Toyota(),Seat()];
//alias RankType => Luxury|Sport|OffRoader|Family|Truck|Economy;

// definition of a playing card
class Car(shared Type type, 
		shared Make make, 
		shared actual Integer new_price, 
		shared actual String name, 
		shared actual Integer horse_power) extends Vehicle() {
	shared Integer coolness() => new_price * horse_power;
	
	
	
	shared Boolean carCompare(Car toCompareWith) {
		if (this.new_price > toCompareWith.new_price) {
			return true;
		}
		else {
			return false;
		}
	}
	
}

// example of a card


"Run the module `cardgame`."
shared void run() {
    
    Car c1 = Car(Family(),Audi(), 1000, "A4", 200);
    print(c1.coolness());
    
    Car c2 = Car(Luxury(), Tesla(), 70000, "ABC", 450);
    
    print(c1.carCompare(c2));
    
    //print(c1.RankMake());
    
}