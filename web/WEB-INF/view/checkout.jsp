<%-- 
    Document   : checkout
    Created on : Nov 5, 2018, 7:27:20 AM
    Author     : Naqib
--%>

<%-- Set session-scoped variable to track the view user is coming from.
     This is used by the language mechanism in the Controller so that
     users view the same page when switching between English and Czech. --%>
<c:set var='view' value='/checkout' scope='session' />

<script src="js/jquery.validate.js" type="text/javascript"></script>

<script type="text/javascript">

    $(document).ready(function(){
        $("#checkoutForm").validate({
            rules: {
                name: "required",
                email: {
                    required: true,
                    email: true
                },
                phone: {
                    required: true,
                    number: true,
                    minlength: 9
                },
                address: {
                    required: true
                },
                creditcard: {
                    required: true,
                    creditcard: true
                }
            }
        });
    });
</script>
            

            <div id="indexTopColumnCheckout">
                <p id="normalfontCheckout" align="center"><fmt:message key='checkout'/></p>
            </div>
            
            <%-- <c:if test="${!empty orderFailureFlag}">
                <p class="error" style="background-color: #6582f9;">We were unable to process your order. Please try again!</p>
            </c:if>--%>

            <div id="indexLeftColumnCheckout">
                
                    
                    <form action="<c:url value='purchase'/>" method="post">

                        <table id="checkoutTableCheckout">
                            <c:if test="${!empty validationErrorFlag}">
                                
                                <tr>
                                    <td colspan="2" style="text-align:left">
                                        <span class="error smallTextCategory">Please provide valid entries for the following field(s):

                                          <c:if test="${!empty nameError}">
                                            <br><span class="indent"><strong>name</strong> (e.g., Abu Bakar)</span>
                                          </c:if>
                                          <c:if test="${!empty emailError}">
                                            <br><span class="indent"><strong>email</strong> (e.g., abubakar@gmail.com)</span>
                                          </c:if>
                                          <c:if test="${!empty phoneError}">
                                            <br><span class="indent"><strong>phone</strong> (e.g., 0123254365)</span>
                                          </c:if>
                                          <c:if test="${!empty addressError}">
                                            <br><span class="indent"><strong>address</strong> (e.g., e.g., 23, Flat Sri Rampai, Wangsa Maju)</span>
                                          </c:if>
                                          <c:if test="${!empty cityRegionError}">
                                            <br><span class="indent"><strong>city region</strong> (e.g., 2)</span>
                                          </c:if>
                                          <c:if test="${!empty ccNumberError}">
                                            <br><span class="indent"><strong>credit card</strong> (e.g., 1111222233334444)</span>
                                          </c:if>

                                        </span>
                                    </td>
                                </tr>
                              </c:if>
                                
                            <tr>
                                
                                <!--<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;">
                                    <b>FULL NAME: </b><input type="text" name="name" style="padding: 10px 20px;"></p>-->
                                
                                <td><p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;">
                                    <b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<fmt:message key='namecheckout'/> </b><input type="text" name="name" value="${param.name}" style="padding: 10px 20px;"></p></td>
                                
                                <!--<td><label for="name">name:</label></td>
                                <td class="inputField">
                                    <input type="text"
                                           size="31"
                                           maxlength="45"
                                           id="name"
                                           name="name"
                                           value="${param.name}">
                                </td>-->
                            </tr>
                            
                            <tr>
                                
                                <td><p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;">
                                    <b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<fmt:message key='emailcheckout'/> </b><input type="text" value="${param.email}" name="email" style="padding: 10px 20px;"></p></td>
                                
                                <!--<td><label for="email">email:</label></td>
                                <td class="inputField">
                                    <input type="text"
                                           size="31"
                                           maxlength="45"
                                           id="email"
                                           name="email"
                                           value="${param.email}">
                                </td>-->
                            </tr>
                            
                            <tr>
                                
                                <td><p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;">
                                    <b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<fmt:message key='phonecheckout'/> </b><input type="text" name="phone" value="${param.phone}" style="padding: 10px 20px;"></p></td>
                                
                                <!--<td><label for="phone">phone:</label></td>
                                <td class="inputField">
                                    <input type="text"
                                           size="31"
                                           maxlength="16"
                                           id="phone"
                                           name="phone"
                                           value="${param.phone}">
                                </td>-->
                            </tr>
                            
                            <tr>
                                
                                
                                
                                <td><p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;">
                                    <b>&emsp;&emsp;&emsp;&emsp;&emsp;<fmt:message key='addresscheckout'/> </b><input type="text" name="address" value="${param.address}" style="padding: 10px 20px;"></p><!--<label for="address" style="margin-top: 3px">address:</label>--></td>
                                <td class="inputField">
                                    <!--<input type="text"
                                           size="31"
                                           maxlength="45"
                                           id="address"
                                           name="address"
                                           value="${param.address}">-->

                                    
                                    <!-- *********************Check this **********************-->
                                    <!--<div id="poscodeCheckout">-->
                                         
                                        <select name="cityRegion" hidden="">
                                          <c:forEach begin="1" end="10" var="regionNumber">
                                            <option value="${regionNumber}"
                                                    <c:if test="${param.cityRegion eq regionNumber}">selected</c:if>>${regionNumber}</option>
                                          </c:forEach>
                                        </select>
                                    <!--</div>-->
                                </td>
                            </tr>
                            
                            <tr>
                                
                                <td><p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;">
                                    <b><fmt:message key='cardcheckout'/> </b><input type="text" value="${param.creditcard}" name="creditcard" style="padding: 10px 20px;"></p></td>
                                
                                <!--<td><label for="creditcard">credit card number:</label></td>
                                <td class="inputField">
                                    <input type="text"
                                           size="31"
                                           maxlength="19"
                                           id="creditcard"
                                           name="creditcard"
                                           value="${param.creditcard}">
                                </td>-->
                            </tr>
                            
                            <tr>
                                <td colspan="2"><input type="submit" class="buttonDesignCheckout" value="<fmt:message key='buttonsubmitcart'/>"></td>
                            </tr>

                        </table>

                    </form>
                    
                
            </div>
            

            <div id="indexRightColumnCheckout">
                
                
                <div id="categoryBoxRightCheckout">
                    
                    <div id="infoBoxCheckout">

                        <div style="border: black solid 1px; height:170px; padding: 10px">
                            
                            <p><fmt:message key='arrivedtextcheckout1'/></p>
                            <p><fmt:message key='arrivedtextcheckout2'/> ${initParam.deliverySurcharge}
                                    <fmt:message key='arrivedtextcheckout3'/></p>
                            
                            
                        </div>

                            
                            <table id="priceBoxCheckout">
                                <tr>
                                    <td><fmt:message key='subtotalcheckout'/></td>
                                    <td class="checkoutPriceColumn">
                                        RM ${cart.subtotal}</td>
                                </tr>
                                <tr>
                                    <td><fmt:message key='deliverycheckout'/></td>
                                    <td class="checkoutPriceColumn">
                                        RM ${initParam.deliverySurcharge}</td>
                                </tr>
                                <tr>
                                    <td class="total"><fmt:message key='totalcheckout'/></td>
                                    <td class="total checkoutPriceColumn">
                                        RM ${cart.total}</td>
                                </tr>
                            </table>
                            
                        
                    </div>
                    
                </div>
                
            </div>


