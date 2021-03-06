<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:layout>
	<jsp:attribute name="title">
		 Inscription du chat
	</jsp:attribute>

	<jsp:body>

    
        <div class="container">

            <form method="POST" >
            
	            <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="nom" style="width: 150px;"class="col-form-label">Nom du chat</label>
	                </div>
	                <div class="col-auto">
	                    <input type="text" id="nom" name="nom" class="form-control" placeholder="Nom du chat">
	                </div>
	            </div>
	    
	           	<div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="sexe" style="width: 150px;"class="col-form-label">Sexe du chat</label>
	                </div>
	                <div class="col-auto">
	                    <select name="sexe" class="form-control">
										  <option value="M">M�le</option>
										  <option value="F">Femelle</option>
						</select>
	                </div>
	            </div> 
	    
	            <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="age" style="width: 150px;"class="col-form-label">Age du chat</label>
	                </div>
	                <div class="col-auto">
	                    <input type="number" id="age" name="age" class="form-control">
	                </div>
	            </div >
	            
	            <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="trancheage" style="width: 150px;"class="col-form-label">Tranche d'age du chat</label>
	                </div>
	                <div class="col-auto">
	                    <select name="trancheage" class="form-control">
										  <option value="B�b�">B�b�</option>
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
							  <option value="Petit">Petit</option>
							  <option value="Moyen">Moyen</option>
							  <option value="Grand">Grand</option>
						</select>
	                </div>
	            </div >
	            
	            <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="region" style="width: 150px;"class="col-form-label">R�gion du refuge du chat</label>
	                </div>
	                <div class="col-auto">
	              		<select name="region" class="form-control">
			     			<c:forEach var="region" items="${ regions }">
							  <option value="${ region.id }">${ region.libelle }</option>
							 </c:forEach>
						</select>
	                </div>
	            </div >
	             
	            <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="dpt" style="width: 150px;"class="col-form-label">D�partement du refuge du chat</label>
	                </div>
	                <div class="col-auto">
						<select name="dpt" class="form-control">
			     			<c:forEach var="departement" items="${ departements }">
							  <option value="${ departement.id }">${ departement.libelle }</option>
							 </c:forEach>
						</select>
	                </div>
	            </div >
	              
	               <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="photo" style="width: 150px;"class="col-form-label">Photo du chat</label>
	                </div>
	                <div class="col-auto">
	                    <input type="text" id="photo" name="photo" class="form-control" value="https://phillyvoice-production.s3.amazonaws.com/media/images/iStock_71729003_MEDIUM.2e16d0ba.fill-735x490.jpg"
	                    placeholder="http://google.com/chat">
	                </div>
	            </div >
	             
	             <div class="row" style="margin: 5px;">
	                <div class="col-auto">
	                    <label for="description" style="width: 150px;"class="col-form-label">Description du chat</label>
	                </div>
	                <div class="col-auto">
	                    <textarea id="description" name="description" class="form-control" placeholder="Description du chat">
	                    </textarea>
	                </div>
	              </div>
	              
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
	                    <label for="specifique" style="width: 150px;"class="col-form-label">Besoins sp�cifique du chat</label>
	                </div>
	                <div class="col-auto">
	                	<select name="specifique" class="form-control">
										  <option value=true>Oui</option>
										  <option value=false>Non</option>
						</select>
	                </div>
	              </div>
	             
	            <button type="submit" class="btn btn-success">Ajouter le chat</button>
	            
			</form>
    
        </div>
       
	</jsp:body>
</t:layout>


       
