
object docenteAmigo {
	method queTengoQueHacer() {
		return 'el TP :)'
	}
}


object hechosYPredicadistas {
	var property invitado
 	var property entrevistador
 	var property rating = 0
 	const property diaDeSemana = "lunes" 
 	
 	method hayBardo() = invitado.armaBardo()
 	
 	method ratingTotal() {
 		rating = 4
 		if (entrevistador == anabelaAsquear){
 			rating += 8
 		}
 		if (invitado == hellMusic){
 			rating += 3
 		}
 		
 	}
}

object unPactoEnla12 {
	var property invitados = []
 	var property entrevistador 
 	var property rating = 0
 	const property diaDeSemana = "viernes"
 	
 	method hayBardo() = invitados.any({invitado=>invitado.armaBardo()})
 	
 	method ratingTotal(){
 		rating = 2
 		rating += invitados.size()
 		if (self.hayBardo()){
 			rating *= 7
 		}
 	}
}


object placaBatman {

}


object noticiero {
	var property placa 
	var property rating =0
 	const property diaDeSemana = "domingo"
 	
 	method hayBardo() = false
 	
 	method ratingTotal(){
 	 		if (placa==placaBatman){
 	 			rating = 15
 	 		}
 	 		else{
 	 		rating = 6
 	 		}
 	 	}
}


object cronicaTv{
 	const property programas = [hechosYPredicadistas, unPactoEnla12, noticiero]
 	
 	method programon() =
 		programas.map({programa=>programa.rating()}).sum()>30
 		and programas.any({programa=>programa.hayBardo()})
 
 }



object mauroNoviale {

}


object anabelaAsquear {

}


object albertoSalamid{
	var property programa 
	
	method armaBardo() = programa.entrevistador() == mauroNoviale 
}


object ricArcorFort{
	var property programa  
	method armaBardo() = programa.invitados().size()>2 || programa.diaDeSemana() == "Lunes"
}


object rafaDezeos{
	var property programa
 	
 	method armaBardo() = true
}


object hellMusic{
	var property programa 
 	
 	method armaBardo() = false
}


object otroInvitado{
	var property programa = unPactoEnla12
	var property personaQueCaeMal
 	
 	method armaBardo() = programa.invitados().contains(personaQueCaeMal)
}


