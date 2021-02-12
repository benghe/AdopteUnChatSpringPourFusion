<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:layout>
	<jsp:attribute name="title">
		Accueil
	</jsp:attribute>
	
	<jsp:body>
		<div class="container">

            <form method="POST" >
            
	    
	           	<div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="sexe" style="width: 150px;"class="col-form-label">Sexe du chat</label>
	                </div>
	                <div class="col-auto">
	                    <select name="sexe" class="form-control">
										  <option value="M">Mâle</option>
										  <option value="F">Femelle</option>
						</select>
	                </div>
	            </div> 
	    
	            <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="trancheage" style="width: 150px;"class="col-form-label">Tranche d'age du chat</label>
	                </div>
	                <div class="col-auto">
	                    <select name="trancheage" class="form-control">
							<option value="all">Toutes</option>
							<option value="Bébé">Bébé</option>
							<option value="Junior">Junior</option>
							<option value="Adulte">Adulte</option>
							<option value="Senior">Senior</option>
						</select>
	                </div>
	            </div >
	            
	            <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="race" style="width: 150px;"class="col-form-label">Race du chat</label>
	                </div>
	                <div class="col-auto">
	                   <select name="race" class="form-control">
							<option value="all">Toutes</option>
			     			<c:forEach var="race" items="${ races }">
							  <option value="${ race.id }">${ race.libelle }</option>
							 </c:forEach>
						</select>
	                </div>
	            </div >
	             
	              <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="color" style="width: 150px;"class="col-form-label">Couleur du chat</label>
	                </div>
	                <div class="col-auto">
                 		<select name="color" class="form-control">
                 			<option value="all">Toutes</option>
			     			<c:forEach var="color" items="${ colors }">
							  <option value="${ color.id }">${ color.libelle }</option>
							 </c:forEach>
						</select>
	                </div>
	            </div >
	            
	             <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="taille" style="width: 150px;"class="col-form-label">Taille du chat</label>
	                </div>
	                <div class="col-auto">
                 	     <select name="taille" class="form-control">
							<option value="all">Toutes</option>
							<option value="Petit">Petit</option>
							<option value="Moyen">Moyen</option>
							<option value="Grand">Grand</option>
						</select>
	                </div>
	            </div >
	            
	            <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="region" style="width: 150px;"class="col-form-label">Région du refuge du chat</label>
	                </div>
	                <div class="col-auto">
	              		<select name="region" class="form-control">
	              			<!-- <option value="all">Toutes</option> -->
			     			<c:forEach var="region" items="${ regions }">
							  <option value="${ region.id }">${ region.libelle }</option>
							 </c:forEach>
						</select>
	                </div>
	            </div >
	             
	            <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="dpt" style="width: 150px;"class="col-form-label">Département du refuge du chat</label>
	                </div>
	                <div class="col-auto">
						<select name="dpt" class="form-control">
							<option value="all">Tous</option>
			     			<c:forEach var="departement" items="${ departements }">
							  <option value="${ departement.id }">${ departement.libelle }</option>
							 </c:forEach>
						</select>
	                </div>
	            </div >
	             
	              <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="enfant" style="width: 150px;"class="col-form-label">Entente du chat avec les enfants</label>
	                </div>
	                <div class="col-auto">
	                    <select name="enfant" class="form-control">
					    	<option value=true>Oui</option>
					    	<option value=false>Non</option>
						</select>
	                </div>
	              </div>
	              
	              <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="chien" style="width: 150px;"class="col-form-label">Entente du chat avec les chiens</label>
	                </div>
	                <div class="col-auto">
	                   	<select name="chien" class="form-control">
					    	<option value=true>Oui</option>
					    	<option value=false>Non</option>
						</select>
	                </div>
	              </div>
	              
	              <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="chat" style="width: 150px;"class="col-form-label">Entente du chat avec les autres chats</label>
	                </div>
	                <div class="col-auto">
	                   	<select name="chat" class="form-control">
										  <option value=true>Oui</option>
										  <option value=false>Non</option>
						</select>
	                </div>
	              </div>
	              
	              <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="specifique" style="width: 150px;"class="col-form-label">Besoins spécifique du chat</label>
	                </div>
	                <div class="col-auto">
	                	<select name="specifique" class="form-control">
										  <option value=true>Oui</option>
										  <option value=false>Non</option>
						</select>
	                </div>
	              </div>
	             
	            <button type="submit" class="btn btn-success">Chercher</button>
	            
			</form>
    
        </div>
		
	</jsp:body>
</t:layout>