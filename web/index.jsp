<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 
    Document   : index
    Created on : Nov 5, 2018, 4:22:06 AM
    Author     : Naqib
--%>
<%--
<sql:query var="categories" dataSource="jdbc/furryfiesta">
    SELECT * FROM category
</sql:query>
    --%>

    <%-- Set session-scoped variable to track the view user is coming from.
        This is used by the language mechanism in the Controller so that
        users view the same page when switching between English and Czech. --%>
   <c:set var='view' value='/index' scope='session' />
   
            <div id="indexCenterIndex">
                
                <p id="bigfontIndex"><fmt:message key='greeting'/></p>
                <p id="normalfontIndex"><fmt:message key='introText1'/></p>
                <p id="normalfontIndex"><fmt:message key='introText2'/></p>
                <br>
                <br>
                <!-- test to access context parameters 
                categoryImagePath: ${initParam.categoryImagePath}
                productImagePath: ${initParam.productImagePath}
                <br>
                <br>-->
                
                <c:forEach var="category" items="${categories}">
                    
                    <div id="categoryBoxIndex">
                    
                        <a href="category?${category.id}">
                        <img src="${initParam.categoryImagePath}${category.name}.jpg" id="imagecategoryleftIndex" alt="${category.name}">
                        </a>
                        <br>
                        <br>
                        <br>
                        <br>
                        <p id="categoryfontIndex"><fmt:message key='${category.name}'/></p>
                        <img src="${initParam.categoryImagePath}${category.name}.png" id="logocategoryIndex">
                        <a href="category?${category.id}"><p style="text-align: center;"><button type="submit" class="buttonDesignIndex" name="submit"><fmt:message key='browse'/> <fmt:message key='${category.name}'/> <fmt:message key='product'/></button></p></a>

                    </div>
                    
                </c:forEach>
                
                <!--
                <div id="categoryBoxIndex">
                    
                    <img src="image/catcategory.jpg" id="imagecategoryleftIndex">
                    <br>
                    <br>
                    <br>
                    <br>
                    <p id="categoryfontIndex">CAT</p>
                    <img src="image/cat.png" id="logocategoryIndex">
                    <a href="category.jsp"><p style="text-align: center;"><button type="submit" class="buttonDesignIndex" name="submit">Browse Cat Product</button></p></a>
                    
                </div>
                
                <br>
                <div id="categoryBoxIndex">
                    
                    <img src="image/dogcategory.jpg" id="imagecategoryrightIndex">
                    <br>
                    <br>
                    <br>
                    <br>
                    <p id="categoryfontIndex">DOG</p>
                    <img src="image/dog.png" id="logocategoryIndex">
                    <a href="category.jsp"><p style="text-align: center;"><button type="submit" class="buttonDesignIndex" name="submit">Browse Dog Product</button></p></a>
                    
                </div>
                
                <br>
                <div id="categoryBoxIndex">
                    
                    <img src="image/rabbitcategory.jpg" id="imagecategoryleftIndex">
                    <br>
                    <br>
                    <br>
                    <br>
                    <p id="categoryfontIndex">RABBIT</p>
                    <img src="image/rabbit.png" id="logocategoryIndex">
                    <a href="category.jsp"><p style="text-align: center;"><button type="submit" class="buttonDesignIndex" name="submit">Browse Rabbit Product</button></p></a>
                    
                </div>
                
                <br>
                <div id="categoryBoxIndex">
                    
                    <img src="image/hamstercategory.jpg" id="imagecategoryrightIndex">
                    <br>
                    <br>
                    <br>
                    <br>
                    <p id="categoryfonthamster">HAMSTER</p>
                    <img src="image/hamster.png" id="logocategoryIndex">
                    <a href="category.jsp"><p style="text-align: center;"><button type="submit" class="buttonDesignIndex" name="submit">Browse Hamster Product</button></p></a>
                    
                </div>
                -->
                
            </div>
