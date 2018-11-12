<%-- 
    Document   : cart
    Created on : Nov 5, 2018, 7:26:16 AM
    Author     : Naqib
--%>

<%-- Set session-scoped variable to track the view user is coming from.
     This is used by the language mechanism in the Controller so that
     users view the same page when switching between English and Czech. --%>
<c:set var='view' value='/cart' scope='session' />

            <div id="indexCenterCart">
                
                <c:choose>
                    <c:when test="${cart.numberOfItems > 1}">
                        <p id="normalfontCart"><fmt:message key='introText1cart'/> ${cart.numberOfItems} <fmt:message key='itemText2cart'/></p>
                    </c:when>
                    <c:when test="${cart.numberOfItems == 1}">
                        <p id="normalfontCart"><fmt:message key='introText1cart'/> ${cart.numberOfItems} <fmt:message key='itemText1cart'/></p>
                    </c:when>
                    <c:otherwise>
                        <p id="normalfontCart"><fmt:message key='itemTextnocart'/></p>
                    </c:otherwise>
                </c:choose>
                
                <br>
                <div id="categoryBoxCenterCart">
                    
                    <div id="actionBarCart">
                        
                        <%-- clear cart widget --%>
                        <c:if test="${!empty cart && cart.numberOfItems != 0}">
                            <a href="viewCart?clear=true" class="bubbleCart hMarginCart"><fmt:message key='buttonclearcart'/></a>
                        </c:if>

                        <%-- continue shopping widget --%>
                        <c:set var="value">
                            <c:choose>
                                <%-- if 'selectedCategory' session object exists, send user to previously viewed category --%>
                                <c:when test="${!empty selectedCategory}">
                                    category
                                </c:when>
                                <%-- otherwise send user to welcome page --%>
                                <c:otherwise>
                                    index.jsp
                                </c:otherwise>
                            </c:choose>
                        </c:set>

                        <a href="${value}" class="bubbleCart hMarginCart"><fmt:message key='buttoncontinuecart'/></a>

                        <%-- checkout widget --%>
                        <c:if test="${!empty cart && cart.numberOfItems != 0}">
                            <a href="checkout" class="bubbleCart hMarginCartn"><fmt:message key='buttoncheckoutcart'/> &#x279f;</a>
                        </c:if>
                        
                        <!--    
                        <a href="#" class="bubbleCart hMarginCart">clear cart</a>
                        <a href="#" class="bubbleCart hMarginCart">continue shopping</a>
                        <a href="#" class="bubbleCart hMarginCart">proceed to checkout</a>
                        -->
                    </div>

                    <c:if test="${!empty cart && cart.numberOfItems != 0}">
                    
                        <h4 id="subtotalCart"><fmt:message key='subtotalcart'/> RM ${cart.subtotal}</h4>

                        <table id="cartTableCart">

                            <tr class="headerCart">
                                <th><fmt:message key='productcart'/></th>
                                <th><fmt:message key='namecart'/></th>
                                <th><fmt:message key='pricecart'/></th>
                                <th><fmt:message key='quantitycart'/></th>
                            </tr>

                            <c:forEach var="cartItem" items="${cart.items}" varStatus="iter">

                                <c:set var="product" value="${cartItem.product}"/>

                                <tr class="${((iter.index % 2) == 0) ? 'lightBlueCart' : 'whiteCart'}">
                                    <td class="lightBlueCart">
                                        <img src="${initParam.productImagePath}${product.name}.jpg"  width="85" height="100" alt="${product.name}">
                                    </td>

                                    <td class="lightBlueCart">${product.name}</td>

                                    <td class="lightBlueCart">RM ${cartItem.total}
                                        <br>
                                        <span class="smallTextCart">( RM ${product.price} / unit )</span>
                                    </td>
                                    <td class="lightBlueCart">

                                        <form action="<c:url value='updateCart'/>" method="post">

                                            <input type="hidden"
                                                    name="productId"
                                                    value="${product.id}">
                                            <input type="text" maxlength="2" size="2" value="${cartItem.quantity}" name="quantity"  style="padding: 10px 5px;">
                                            <input type="submit"  class="buttonDesignCart" name="submit" value="<fmt:message key='buttonupdatecart'/>">
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>

                            <!--
                             <tr>
                                <td class="whiteCart">
                                    <img src="#" alt="product image">
                                </td>
                                <td class="whiteCart">[ product name ]</td>
                                <td class="whiteCart">[ price ]</td>
                                <td class="whiteCart">

                                    <form action="updateCart" method="post">
                                        <input type="text" maxlength="2" size="2" value="1" name="quantity"  style="padding: 10px 20px;">
                                        <input type="submit"  class="buttonDesignCart" name="submit" value="Update">
                                    </form>
                                </td>
                            </tr>

                            <tr>
                                <td class="lightBlue">
                                    <img src="#" alt="product image">
                                </td>
                                <td class="lightBlue">[ product name ]</td>
                                <td class="lightBlue">[ price ]</td>
                                <td class="lightBlue">

                                    <form action="updateCart" method="post">
                                        <input type="text" maxlength="2" size="2" value="1" name="quantity"  style="padding: 10px 20px;">
                                        <input type="submit"  class="buttonDesignCart" name="submit" value="Update">
                                    </form>
                                </td>
                            </tr>
                            -->

                        </table>
                    
                    </c:if>

                </div>
                
            </div>

