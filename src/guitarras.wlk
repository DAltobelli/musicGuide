
object gibson {
	var estaSana = true
	method romperse(){
		estaSana = false
	}
	method valor(){
		if(estaSana){
			return 15
		} else{
			return 5
		}
	}
}

object fender {
	method valor() {
		return 10
	}
}