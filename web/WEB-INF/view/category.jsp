<%-- 
    Document   : category
    Created on : Nov 5, 2018, 7:27:02 AM
    Author     : Naqib
--%>
<%--
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<sql:query var="categories" dataSource="jdbc/furryfiesta">
    SELECT * FROM category
</sql:query>
<sql:query var="selectedCategory" dataSource="jdbc/furryfiesta">
    SELECT name FROM category WHERE id = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>
<sql:query var="categoryProducts" dataSource="jdbc/furryfiesta">
    SELECT * FROM product WHERE category_id = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>
--%>

<%-- Set session-scoped variable to track the view user is coming from.
     This is used by the language mechanism in the Controller so that
     users view the same page when switching between English and Czech. --%>
<c:set var='view' value='/category' scope='session' />
            
            <div id="indexLeftColumnCategory">
                
                <div id="categoryBoxLeftCategory">
                    
                    <p id='categoryTitleTextCategory'><fmt:message key='categorycat'/></p>
                    
                    <c:forEach var="category" items="${categories}">
                        
                        <c:choose>
                            <c:when test="${category.name == selectedCategory.name}">
                                <div class="categoryButtonCategory" id="selectedCategoryCategory">
                                    <span class="categoryTextCategory"><fmt:message key='${category.name}'/></span>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <a href="category?${category.id}" class="categoryButtonCategory">
                                    <span class="categoryTextCategory"><fmt:message key='${category.name}'/></span>
                                </a>
                            </c:otherwise>
                        </c:choose>
                        
                    </c:forEach>
                    
                    <!--
                    <div class="categoryButtonCategory" id="selectedCategoryCategory">
                        <span class="categoryTextCategory">CAT</span>
                    </div>

                    <a href="#" class="categoryButtonCategory">
                        <span class="categoryTextCategory">DOG</span>
                    </a>

                    <a href="#" class="categoryButtonCategory">
                        <span class="categoryTextCategory">RABBIT</span>
                    </a>

                    <a href="#" class="categoryButtonCategory">
                        <span class="categoryTextCategory">HAMSTER</span>
                    </a>
                    -->
                    
                </div>
                
            </div>
            

            <div id="indexRightColumnCategory">
                
                <p id="bigfontCategory"><fmt:message key='greetingcat'/></p>
                <p id="normalfontCategory"><fmt:message key='introText1cat'/></p>
                <p id="normalfontCategory"><fmt:message key='introText2cat'/></p>
                <br>
                <div id="categoryBoxRightCategory">
                    
                    <p id="categoryTitleCategory"><fmt:message key='${selectedCategory.name}'/></p>

                    <table id="productTableCategory">
                        
                        <!-- The c:forEach tag now references the categoryProducts collection. 
                        The c:forEach loop will now iterate over each Product object contained in the collection, 
                        and extract data accordingly -->
                        <c:forEach var="product" items="${categoryProducts}" varStatus="iter">

                            <tr class="${((iter.index % 2) == 0) ? 'lightBlueCategory' : 'whiteCategory'}">
                                <td class="lightBlueCategory">
                                    <img src="${initParam.productImagePath}${product.name}.jpg" width="85" height="100" alt="image of ${product.name}">
                                </td>
                                <td class="lightBlueCategory">
                                    ${product.name}
                                    <br>
                                    <span class="smallTextCategory">${product.description}</span>
                                </td>
                                <td class="lightBlueCategory">RM ${product.price}</td>
                                <td class="lightBlueCategory">
                                    <form action="addToCart" method="post">
                                        <input type="hidden" name="productId" value="${product.id}">
                                        <input type="submit" name="submit" class="buttonDesignCategory" value="<fmt:message key='buttonaddcat'/>">
                                    </form>
                                </td>
                            </tr>

                        </c:forEach>
                        
                        
                        
                        <!--

                        <tr>
                            <td class="whiteCategory">
                                <img src="#" alt="product image">
                            </td>
                            <td class="whiteCategory">
                                [ product name ]
                                <br>
                                <span class="smallTextCategory">[ product description ]</span>
                            </td>
                            <td class="whiteCategory">[ price ]</td>
                            <td class="whiteCategory">
                                <form action="#" method="post">
                                    <input type="submit"  class="buttonDesignCategory" value="Add to Cart">
                                </form>
                            </td>
                        </tr>

                        <tr>
                            <td class="lightBlueCategory">
                                <img src="#" alt="product image">
                            </td>
                            <td class="lightBlueCategory">
                                [ product name ]
                                <br>
                                <span class="smallTextCategory">[ product description ]</span>
                            </td>
                            <td class="lightBlueCategory">[ price ]</td>
                            <td class="lightBlueCategory">
                                <form action="#" method="post">
                                    <input type="submit"  class="buttonDesignCategory" value="Add to Cart">
                                </form>
                            </td>
                        </tr>

                        <tr>
                            <td class="whiteCategory">
                                <img src="#" alt="product image">
                            </td>
                            <td class="whiteCategory">
                                [ product name ]
                                <br>
                                <span class="smallTextCategory">[ product description ]</span>
                            </td>
                            <td class="whiteCategory">[ price ]</td>
                            <td class="whiteCategory">
                                <form action="#" method="post">
                                    <input type="submit"  class="buttonDesignCategory" value="Add to Cart">
                                </form>
                            </td>
                        </tr>
                        -->
                        
                    </table>
                    
                </div>
                
            </div>

