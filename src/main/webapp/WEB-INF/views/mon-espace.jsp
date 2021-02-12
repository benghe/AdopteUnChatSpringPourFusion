<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>


<t:layout>
	<jsp:attribute name="title">
		Mon espace
	</jsp:attribute>

	<jsp:body>
     

      <div class="container">

        <div class="row">
            <div class="col-3">

            </div>

            <div class="col-6 justify-content-center">
                <div class="row" style="border: 30px;">
                    <!-- page de modification personnalis�e en fonction du type -->
                    <div>
						<%-- <c:if test="${personneAModifier.getType()=='Adoptant'}"> --%>
						<c:if test="${personneType=='Adoptant'}">
						
							<a href="mon-espace/modification-adoptant" class="btn btn-secondary" 
	                       		 role="button" aria-pressed="true">Modifier mes informations</a>
						
						</c:if>
						
						<%-- <c:if test="${personneAModifier.getType()=='Refuge'}"> --%>
						<c:if test="${personneType=='Refuge'}">
							 <a href="mon-espace/modification-refuge" class="btn btn-secondary" 
                        		role="button" aria-pressed="true">Modifier mes informations</a>
                        		
                        	<a href="chat/inscription" class="btn btn-secondary" 
                        		role="button" aria-pressed="true">Ajouter un chat</a>
						</c:if>
						                 
                        
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">
                        Supprimer mon compte
                        </button>

                    </div>

                </div>
                
                <c:if test="${personneType=='Refuge'}">
                
					<div class="row" style="border: 30px;">
                 		<table class="table">
							<thead>
						    	<tr>
							      <th scope="col">Photo</th>
							      <th scope="col">Nom</th>
							      <th scope="col">Race</th>
							      <th scope="col">Actions</th>
						     
						    	</tr>
						 	</thead>
						 	
						 	<tbody>
						  
						  		<c:forEach var="chat" items="${ chats }">
						  		
						  			<tr>
								      <td scope="row">
								      	
									      <img src=" ${ chat.photo }" alt="" style="height:100px; width:100px">

								      </td>
								      <td>${ chat.nom }</td>
								      <td>${ chat.race.libelle }</td>
								      <td>
								      	<a href="chat/modifier&id=${ chat.id }"> <i style="color:grey;" class="fas fa-edit"></i> </a>
								        <a href="mon-espace/supprimer?id=${ chat.id }"> <i style="color:red;" class="far fa-trash-alt"></i> </a>
								      </td>
							      
							     
						    		</tr>
						  		
						  		
						  		</c:forEach>
						  	
						  </tbody>
						</table>

                 
                	</div>
                	
				</c:if>

                
                
                

            </div>

            <div class="col-3">
                
            </div>

        </div>

      </div>

  

    <!-- Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="deleteModalLabel">Supprimer mon compte</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
            Voulez-vous vraiment supprimer votre compte?
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Non</button>
            
            <form method="POST">
            
            <button type="submit" class="btn btn-success">Oui</button>

            </form>

            </div>
        </div>
        </div>
    </div>

	</jsp:body>
	
</t:layout>
