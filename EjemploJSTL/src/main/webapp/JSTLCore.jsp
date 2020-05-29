<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Core</title>
    </head>
    <body>
        <h1>JSTL Core (Jsp Standard Tag Library)</h1>
        <!-- Manipulacion de variables -->
        <!-- Se define la variable -->
        <c:set var="nombre" value="Enesto" />
        
        <!-- Desplegamos el valor de la variable -->
        Variable nombre: <c:out value="${nombre}" />
        <br><br>
        Variable con codigo HTML:
        <c:out value="<h4>hola</h4>" escapeXml="false" />
        <br><br>
        <!-- Codigo condicionado con if -->
        <c:set var="bandera" value="true" />
        <c:if test="${!bandera}" >
            La bandera es verdadera
        </c:if>
        
        <br>
        <!-- Codigo condicionado, uso de switch -->
        <c:if test="${param.opcion !=null}" >
            <c:choose>
                <c:when test="${param.opcion == 1}">
                    <br>
                    Opcion 1 seleccionada
                </c:when>
                <c:when test="${param.opcion == 2}">
                    <br>
                    Opcion 2 seleccionada
                </c:when>
                    <c:otherwise>
                        <br>
                        Opcion desconocida: ${param.opcion}
                    </c:otherwise>
                    
            </c:choose>
        </c:if>
            
        <!-- Iteracion  de un arreglo -->
        <% 
            String nombres[] = {"Claudia","Pedro","Juan"};
            request.setAttribute("nombres",nombres);
        %>
        <br><br>
        Lista de nombres:
        <br>
        <ul>
            <c:forEach var="persona" items="${nombres}" >
                <li>${persona}</li>
            </c:forEach>
        </ul>
        <br>
        <a href="index.jsp">Regresar al inicio</a>
    </body>
</html>
